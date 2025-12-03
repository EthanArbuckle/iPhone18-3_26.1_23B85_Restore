@interface HMMTRFileManager
- (BOOL)writeDictionary:(id)dictionary toURL:(id)l error:(id *)error;
@end

@implementation HMMTRFileManager

- (BOOL)writeDictionary:(id)dictionary toURL:(id)l error:(id *)error
{
  lCopy = l;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:lCopy options:0 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end