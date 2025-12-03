@interface AppleSTDP2700Bootstrap
- (AppleSTDP2700Bootstrap)bootstrapWithOptions:(id)options;
- (AppleSTDP2700Bootstrap)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options;
@end

@implementation AppleSTDP2700Bootstrap

- (AppleSTDP2700Bootstrap)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options
{
  if (delegate && (v8.receiver = self, v8.super_class = AppleSTDP2700Bootstrap, (self = [(AppleSTDP2700Bootstrap *)&v8 init:class]) != 0))
  {
    self->_delegate = delegate;
  }

  else
  {
    selfCopy = self;
    return 0;
  }

  return self;
}

- (AppleSTDP2700Bootstrap)bootstrapWithOptions:(id)options
{
  memset(&v23, 0, sizeof(v23));
  p_delegate = &self->_delegate;
  [(FudPluginDelegate *)self->_delegate log:5 format:@"%s\n", "[AppleSTDP2700Bootstrap bootstrapWithOptions:]"];
  if (stat("/usr/standalone/firmware/STDP2700/runtime", &v23))
  {
    [(FudPluginDelegate *)*p_delegate log:3 format:@"%s: firmware not found: %s\n", "[AppleSTDP2700Bootstrap bootstrapWithOptions:]", "/usr/standalone/firmware/STDP2700/runtime"];
  }

  else
  {
    v6 = [objc_msgSend(options objectForKeyedSubscript:{@"IOMatchLaunchServiceID", "unsignedLongLongValue"}];
    v7 = IORegistryEntryIDMatching(v6);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7);
    if (MatchingService)
    {
      v9 = MatchingService;
      while (1)
      {
        v10 = IODPDeviceCreateWithService();
        IOObjectRelease(v9);
        if (!v10)
        {
          break;
        }

        v11 = DPFUSessionCreate(kCFAllocatorDefault, v10, 2u);
        if (v11)
        {
          v12 = v11;
          DPFUSessionSetLogLevel(v11, 7);
          updated = DPFUSessionEnterUpdateMode(v12);
          if (updated)
          {
            [(AppleSTDP2700Bootstrap *)p_delegate bootstrapWithOptions:?];
          }

          else
          {
            v19 = DPFUSessionInstallFilePayload(v12, "/usr/standalone/firmware/STDP2700/runtime", 0, v14, v15, v16, v17, v18);
            if (v19)
            {
              [(AppleSTDP2700Bootstrap *)p_delegate bootstrapWithOptions:v19];
            }

            else
            {
              v20 = DPFUSessionLeaveUpdateMode(v12);
              if (!v20)
              {
                CFRelease(v10);
                CFRelease(v12);
                v5 = 1;
                return [(FudPluginDelegate *)*p_delegate didBootstrap:v5 info:0 error:0];
              }

              [(AppleSTDP2700Bootstrap *)p_delegate bootstrapWithOptions:v20];
            }
          }

          CFRelease(v10);
        }

        else
        {
          [AppleSTDP2700Bootstrap bootstrapWithOptions:?];
          v12 = v10;
        }

        CFRelease(v12);
        [(FudPluginDelegate *)*p_delegate log:3 format:@"%s: retrying after 1 second...\n", "[AppleSTDP2700Bootstrap bootstrapWithOptions:]"];
        sleep(1u);
        v21 = IORegistryEntryIDMatching(v6);
        v9 = IOServiceGetMatchingService(kIOMasterPortDefault, v21);
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      [AppleSTDP2700Bootstrap bootstrapWithOptions:?];
    }

    else
    {
LABEL_17:
      [AppleSTDP2700Bootstrap bootstrapWithOptions:?];
    }
  }

  v5 = 0;
  return [(FudPluginDelegate *)*p_delegate didBootstrap:v5 info:0 error:0];
}

@end