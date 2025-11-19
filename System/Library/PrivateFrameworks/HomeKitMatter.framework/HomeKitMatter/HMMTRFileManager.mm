@interface HMMTRFileManager
- (BOOL)writeDictionary:(id)a3 toURL:(id)a4 error:(id *)a5;
@end

@implementation HMMTRFileManager

- (BOOL)writeDictionary:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:a5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:v7 options:0 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end