@interface ULAssociatedStateMO
+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context;
@end

@implementation ULAssociatedStateMO

+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULAssociatedStateMO alloc] initWithContext:contextCopy];
  [(ULAssociatedStateMO *)v9 setLoi:mOCopy];
  [(ULAssociatedStateMO *)v9 setTimestamp:*(o + 5)];
  [(ULAssociatedStateMO *)v9 setIsAssociated:*(o + 48)];
  v10 = MEMORY[0x277CCACA8];
  CLMacAddress::str(o + 7, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = [v10 stringWithUTF8String:v11];
  [(ULAssociatedStateMO *)v9 setMacAddress:v12];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  [(ULAssociatedStateMO *)v9 setBand:*(o + 16)];
  [(ULAssociatedStateMO *)v9 setChannel:*(o + 17)];

  return v9;
}

@end