@interface DATrafficLogFilename
+ (id)filenameWithBasename:(id)basename;
@end

@implementation DATrafficLogFilename

+ (id)filenameWithBasename:(id)basename
{
  v4 = MEMORY[0x277CCA8D8];
  basenameCopy = basename;
  mainBundle = [v4 mainBundle];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v8 = [self filenameWithBasename:basenameCopy bundle:mainBundle processInfo:processInfo uid:getuid()];

  return v8;
}

@end