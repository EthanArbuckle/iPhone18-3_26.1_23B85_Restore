@interface MXMUnitMemory
+ (MXMUnitMemory)bits;
+ (MXMUnitMemory)bytes;
+ (MXMUnitMemory)exabits;
+ (MXMUnitMemory)exabytes;
+ (MXMUnitMemory)exbibits;
+ (MXMUnitMemory)exbibytes;
+ (MXMUnitMemory)gibibits;
+ (MXMUnitMemory)gibibytes;
+ (MXMUnitMemory)gigabits;
+ (MXMUnitMemory)gigabytes;
+ (MXMUnitMemory)kibibits;
+ (MXMUnitMemory)kibibytes;
+ (MXMUnitMemory)kilobits;
+ (MXMUnitMemory)kilobytes;
+ (MXMUnitMemory)mebibits;
+ (MXMUnitMemory)mebibytes;
+ (MXMUnitMemory)megabits;
+ (MXMUnitMemory)megabytes;
+ (MXMUnitMemory)nibbles;
+ (MXMUnitMemory)pebibits;
+ (MXMUnitMemory)pebibytes;
+ (MXMUnitMemory)petabits;
+ (MXMUnitMemory)petabytes;
+ (MXMUnitMemory)tebibits;
+ (MXMUnitMemory)tebibytes;
+ (MXMUnitMemory)terabits;
+ (MXMUnitMemory)terabytes;
@end

@implementation MXMUnitMemory

+ (MXMUnitMemory)bits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"bit" converter:v3];

  return v4;
}

+ (MXMUnitMemory)nibbles
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:4.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"nibble" converter:v3];

  return v4;
}

+ (MXMUnitMemory)bytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:8.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"byte" converter:v3];

  return v4;
}

+ (MXMUnitMemory)kilobits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"kb" converter:v3];

  return v4;
}

+ (MXMUnitMemory)kilobytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:8000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"kB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)megabits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1000000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Mb" converter:v3];

  return v4;
}

+ (MXMUnitMemory)megabytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:8000000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"MB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)gigabits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1000000000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Gb" converter:v3];

  return v4;
}

+ (MXMUnitMemory)gigabytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:8000000000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"GB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)terabits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:9.99999996e11];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Tb" converter:v3];

  return v4;
}

+ (MXMUnitMemory)terabytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:7.99999997e12];
  v4 = [(NSDimension *)v2 initWithSymbol:@"TB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)petabits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:9.99999987e14];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Pb" converter:v3];

  return v4;
}

+ (MXMUnitMemory)petabytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:7.9999999e15];
  v4 = [(NSDimension *)v2 initWithSymbol:@"PB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)exabits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.00000003e16];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Eb" converter:v3];

  return v4;
}

+ (MXMUnitMemory)exabytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:8.00000022e16];
  v4 = [(NSDimension *)v2 initWithSymbol:@"EB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)kibibits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1024.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Kib" converter:v3];

  return v4;
}

+ (MXMUnitMemory)kibibytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:8192.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"KiB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)mebibits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1048576.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Mib" converter:v3];

  return v4;
}

+ (MXMUnitMemory)mebibytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:8388608.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"MiB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)gibibits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1073741820.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Gib" converter:v3];

  return v4;
}

+ (MXMUnitMemory)gibibytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:8589934590.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"GiB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)tebibits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.09951163e12];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Tib" converter:v3];

  return v4;
}

+ (MXMUnitMemory)tebibytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:8.79609302e12];
  v4 = [(NSDimension *)v2 initWithSymbol:@"TiB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)pebibits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.12589991e15];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Pib" converter:v3];

  return v4;
}

+ (MXMUnitMemory)pebibytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:9.00719925e15];
  v4 = [(NSDimension *)v2 initWithSymbol:@"PiB" converter:v3];

  return v4;
}

+ (MXMUnitMemory)exbibits
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.1529215e18];
  v4 = [(NSDimension *)v2 initWithSymbol:@"Eib" converter:v3];

  return v4;
}

+ (MXMUnitMemory)exbibytes
{
  v2 = [MXMUnitMemory alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:9.22337204e18];
  v4 = [(NSDimension *)v2 initWithSymbol:@"EiB" converter:v3];

  return v4;
}

@end