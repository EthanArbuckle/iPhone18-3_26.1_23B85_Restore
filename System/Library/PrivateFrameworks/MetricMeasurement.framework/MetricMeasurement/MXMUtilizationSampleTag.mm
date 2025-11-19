@interface MXMUtilizationSampleTag
+ (MXMUtilizationSampleTag)CPU;
+ (MXMUtilizationSampleTag)CPUCycles;
+ (MXMUtilizationSampleTag)CPUInstructions;
+ (MXMUtilizationSampleTag)CPULoad;
+ (MXMUtilizationSampleTag)CPULoadTask;
+ (MXMUtilizationSampleTag)CPULoadThread;
+ (MXMUtilizationSampleTag)CPUQos;
+ (MXMUtilizationSampleTag)CPUQosBackground;
+ (MXMUtilizationSampleTag)CPUQosDefault;
+ (MXMUtilizationSampleTag)CPUQosLegacy;
+ (MXMUtilizationSampleTag)CPUQosMaintenance;
+ (MXMUtilizationSampleTag)CPUQosUserInitiated;
+ (MXMUtilizationSampleTag)CPUQosUserInteractive;
+ (MXMUtilizationSampleTag)CPUQosUtility;
+ (MXMUtilizationSampleTag)CPUTicks;
+ (MXMUtilizationSampleTag)CPUTicksIdle;
+ (MXMUtilizationSampleTag)CPUTicksNice;
+ (MXMUtilizationSampleTag)CPUTicksSystem;
+ (MXMUtilizationSampleTag)CPUTicksUser;
+ (MXMUtilizationSampleTag)CPUTime;
+ (MXMUtilizationSampleTag)CPUTimeSystem;
+ (MXMUtilizationSampleTag)CPUTimeUser;
+ (MXMUtilizationSampleTag)IO;
+ (MXMUtilizationSampleTag)IOLogicalWrites;
+ (MXMUtilizationSampleTag)IOReads;
+ (MXMUtilizationSampleTag)IOWrites;
+ (MXMUtilizationSampleTag)machPort;
+ (MXMUtilizationSampleTag)memory;
+ (MXMUtilizationSampleTag)memoryDirtied;
+ (MXMUtilizationSampleTag)memoryLeak;
+ (MXMUtilizationSampleTag)memoryPeakPhysicalInterval;
+ (MXMUtilizationSampleTag)memoryPeakPhysicalLifetime;
+ (MXMUtilizationSampleTag)memoryPhysical;
+ (MXMUtilizationSampleTag)memoryResident;
+ (MXMUtilizationSampleTag)memorySwapped;
+ (MXMUtilizationSampleTag)memoryVirtual;
+ (MXMUtilizationSampleTag)memoryWired;
+ (MXMUtilizationSampleTag)network;
+ (MXMUtilizationSampleTag)networkRecievedBytes;
+ (MXMUtilizationSampleTag)networkRecievedPackets;
+ (MXMUtilizationSampleTag)networkSentBytes;
+ (MXMUtilizationSampleTag)networkSentPackets;
@end

@implementation MXMUtilizationSampleTag

+ (MXMUtilizationSampleTag)CPU
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUCycles
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.cycles"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUInstructions
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.instructions"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUTime
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.time"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUTimeUser
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.time.user"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUTimeSystem
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.time.system"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUQos
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.qos"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUQosDefault
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.qos.default"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUQosMaintenance
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.qos.maintenance"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUQosBackground
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.qos.background"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUQosUtility
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.qos.utility"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUQosLegacy
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.qos.legacy"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUQosUserInitiated
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.qos.user.initiated"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUQosUserInteractive
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.qos.user.interactive"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUTicks
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.ticks"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUTicksIdle
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.ticks.idle"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUTicksUser
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.ticks.user"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUTicksSystem
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.ticks.system"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPUTicksNice
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.ticks.nice"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPULoad
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.load"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPULoadTask
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.load.task"];

  return v2;
}

+ (MXMUtilizationSampleTag)CPULoadThread
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.cpu.load.thread"];

  return v2;
}

+ (MXMUtilizationSampleTag)memory
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory"];

  return v2;
}

+ (MXMUtilizationSampleTag)memoryPhysical
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory.physical"];

  return v2;
}

+ (MXMUtilizationSampleTag)memoryPeakPhysicalLifetime
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory.peak.physical.lifetime"];

  return v2;
}

+ (MXMUtilizationSampleTag)memoryPeakPhysicalInterval
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory.peak.physical.interval"];

  return v2;
}

+ (MXMUtilizationSampleTag)memoryWired
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory.wired"];

  return v2;
}

+ (MXMUtilizationSampleTag)memoryResident
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory.resident"];

  return v2;
}

+ (MXMUtilizationSampleTag)memoryDirtied
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory.dirtied"];

  return v2;
}

+ (MXMUtilizationSampleTag)memorySwapped
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory.swapped"];

  return v2;
}

+ (MXMUtilizationSampleTag)memoryVirtual
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory.virtual"];

  return v2;
}

+ (MXMUtilizationSampleTag)memoryLeak
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.memory.leak"];

  return v2;
}

+ (MXMUtilizationSampleTag)IO
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.io"];

  return v2;
}

+ (MXMUtilizationSampleTag)IOReads
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.io.reads"];

  return v2;
}

+ (MXMUtilizationSampleTag)IOWrites
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.io.writes"];

  return v2;
}

+ (MXMUtilizationSampleTag)IOLogicalWrites
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.io.logical.writes"];

  return v2;
}

+ (MXMUtilizationSampleTag)machPort
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.mach.port"];

  return v2;
}

+ (MXMUtilizationSampleTag)network
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.network"];

  return v2;
}

+ (MXMUtilizationSampleTag)networkSentBytes
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.network.sent.bytes"];

  return v2;
}

+ (MXMUtilizationSampleTag)networkRecievedBytes
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.network.recieved.bytes"];

  return v2;
}

+ (MXMUtilizationSampleTag)networkSentPackets
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.network.sent.packets"];

  return v2;
}

+ (MXMUtilizationSampleTag)networkRecievedPackets
{
  v2 = [(MXMSampleTag *)[MXMUtilizationSampleTag alloc] initWithDNString:@"utilization.network.recieved.packets"];

  return v2;
}

@end