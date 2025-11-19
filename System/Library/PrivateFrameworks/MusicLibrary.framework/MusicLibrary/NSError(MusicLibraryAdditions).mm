@interface NSError(MusicLibraryAdditions)
+ (id)ml_errorWithCode:()MusicLibraryAdditions description:;
@end

@implementation NSError(MusicLibraryAdditions)

+ (id)ml_errorWithCode:()MusicLibraryAdditions description:
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  if (v10)
  {
    v16 = &a9;
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&a9];
    v12 = v11;
    if (v11)
    {
      v17 = *MEMORY[0x277CCA450];
      v18[0] = v11;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
LABEL_6:
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MLMusicLibraryErrorDomain" code:a3 userInfo:{v13, v16}];

  return v14;
}

@end