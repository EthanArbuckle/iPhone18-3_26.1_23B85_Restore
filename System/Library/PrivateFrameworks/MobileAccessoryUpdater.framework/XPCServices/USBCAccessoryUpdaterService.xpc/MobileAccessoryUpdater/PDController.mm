@interface PDController
+ (id)knownPDControllers;
+ (id)pdControllerForVID:(unsigned int)a3 DID:(unsigned int)a4 address:(unsigned int)a5 userClient:(id)a6;
- (int)receiveVDM:(void *)a3 length:(unint64_t)a4 outSop:(int *)a5 outSequence:(char *)a6 outLength:(unint64_t *)a7;
- (int)receiveVDMAttention:(void *)a3 length:(unint64_t)a4 outSop:(int *)a5 outSequence:(char *)a6 outLength:(unint64_t *)a7;
- (int)registerRead:(void *)a3 ofLength:(unint64_t)a4 atAddress:(unsigned int)a5 andOutReadLength:(unint64_t *)a6;
- (int)registerWrite:(void *)a3 ofLength:(unint64_t)a4 atAddress:(unsigned int)a5;
@end

@implementation PDController

+ (id)knownPDControllers
{
  v20 = +[NSMutableArray array];
  v2 = +[AppleHPMUserClientManager sharedInstance];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 userClientSet];
    v5 = [v4 copy];

    if (v5)
    {
      v19 = v3;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        v8 = v7;
        ChildIterator = 0;
        v10 = "IOService";
        v11 = *v26;
        v21 = v6;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            iterator = 0;
            if (!ChildIterator)
            {
              ChildIterator = IORegistryEntryGetChildIterator([v13 service], v10, &iterator);
              if (!ChildIterator)
              {
                v14 = IOIteratorNext(iterator);
                if (v14)
                {
                  v15 = v14;
                  do
                  {
                    if (IOObjectConformsTo(v15, "AppleHPMDevice"))
                    {
                      v23 = 0;
                      v22 = 0;
                      if (![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Address" outValue:&v23]&& ![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Vendor ID" outValue:&v22 + 4]&& ![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Device ID" outValue:&v22])
                      {
                        v16 = v10;
                        v17 = [PDController pdControllerForVID:HIDWORD(v22) DID:v22 address:v23 userClient:v13];
                        if (v17)
                        {
                          [v20 addObject:v17];
                        }

                        v10 = v16;
                        v6 = v21;
                      }
                    }

                    IOObjectRelease(v15);
                    v15 = IOIteratorNext(iterator);
                  }

                  while (v15);
                }

                if (iterator)
                {
                  IOObjectRelease(iterator);
                }

                ChildIterator = 0;
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v8);
      }

      v3 = v19;
    }
  }

  return v20;
}

+ (id)pdControllerForVID:(unsigned int)a3 DID:(unsigned int)a4 address:(unsigned int)a5 userClient:(id)a6
{
  v6 = off_1000242E0;
  if (a3 != 40)
  {
    v6 = off_1000242E8;
  }

  v7 = [(__objc2_class *)*v6 createWithDeviceAddress:a5 userClient:a6];

  return v7;
}

- (int)registerRead:(void *)a3 ofLength:(unint64_t)a4 atAddress:(unsigned int)a5 andOutReadLength:(unint64_t *)a6
{
  v7 = a5;
  v11 = [(PDController *)self userClient];
  LODWORD(a6) = [v11 iecsReadCommandForDevice:-[PDController address](self withAddress:"address") buffer:v7 length:a3 flags:a4 andOutReadLength:{0, a6}];

  return a6;
}

- (int)registerWrite:(void *)a3 ofLength:(unint64_t)a4 atAddress:(unsigned int)a5
{
  v5 = a5;
  v9 = [(PDController *)self userClient];
  v10 = [v9 iecsWriteCommandForDevice:-[PDController address](self withAddress:"address") buffer:v5 length:a3 flags:{a4, 0}];

  return v10;
}

- (int)receiveVDM:(void *)a3 length:(unint64_t)a4 outSop:(int *)a5 outSequence:(char *)a6 outLength:(unint64_t *)a7
{
  v13 = [(PDController *)self userClient];
  LODWORD(a7) = [v13 receiveVDMForDevice:-[PDController address](self buffer:"address") length:a3 flags:a4 outSOP:0 outSequence:a5 outLength:{a6, a7}];

  return a7;
}

- (int)receiveVDMAttention:(void *)a3 length:(unint64_t)a4 outSop:(int *)a5 outSequence:(char *)a6 outLength:(unint64_t *)a7
{
  v13 = [(PDController *)self userClient];
  LODWORD(a7) = [v13 receiveVDMAttentionForDevice:-[PDController address](self buffer:"address") length:a3 flags:a4 outSOP:0 outSequence:a5 outLength:{a6, a7}];

  return a7;
}

@end