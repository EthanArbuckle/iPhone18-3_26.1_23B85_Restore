@interface DATrafficLogFilename
+ (id)filenameWithBasename:(id)a3;
@end

@implementation DATrafficLogFilename

+ (id)filenameWithBasename:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 mainBundle];
  v7 = [MEMORY[0x277CCAC38] processInfo];
  v8 = [a1 filenameWithBasename:v5 bundle:v6 processInfo:v7 uid:getuid()];

  return v8;
}

@end