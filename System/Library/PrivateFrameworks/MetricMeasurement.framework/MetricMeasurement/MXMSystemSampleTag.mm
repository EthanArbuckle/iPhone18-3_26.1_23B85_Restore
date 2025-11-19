@interface MXMSystemSampleTag
+ (MXMSystemSampleTag)CPUCores;
+ (MXMSystemSampleTag)CPUCoresLogical;
+ (MXMSystemSampleTag)CPUCoresPhysical;
@end

@implementation MXMSystemSampleTag

+ (MXMSystemSampleTag)CPUCores
{
  v2 = [(MXMSampleTag *)[MXMSystemSampleTag alloc] initWithDNString:@"system.cpu.cores"];

  return v2;
}

+ (MXMSystemSampleTag)CPUCoresLogical
{
  v2 = [(MXMSampleTag *)[MXMSystemSampleTag alloc] initWithDNString:@"system.cpu.cores.logical"];

  return v2;
}

+ (MXMSystemSampleTag)CPUCoresPhysical
{
  v2 = [(MXMSampleTag *)[MXMSystemSampleTag alloc] initWithDNString:@"system.cpu.cores.physical"];

  return v2;
}

@end