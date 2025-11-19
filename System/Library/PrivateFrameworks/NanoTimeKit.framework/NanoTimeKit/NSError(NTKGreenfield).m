@interface NSError(NTKGreenfield)
+ (id)greenfield_addWatchFaceErrorWithCode:()NTKGreenfield message:;
+ (id)greenfield_decodeWatchFaceErrorWithCode:()NTKGreenfield message:;
+ (id)greenfield_encodeWatchFaceErrorWithCode:()NTKGreenfield message:;
@end

@implementation NSError(NTKGreenfield)

+ (id)greenfield_addWatchFaceErrorWithCode:()NTKGreenfield message:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager" code:a3 userInfo:v8];

  return v9;
}

+ (id)greenfield_encodeWatchFaceErrorWithCode:()NTKGreenfield message:
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 errorWithDomain:@"com.apple.nanotimekit.kNTKGreenfieldEncodeFaceManagerErrorDomain" code:0 userInfo:v7];

  return v8;
}

+ (id)greenfield_decodeWatchFaceErrorWithCode:()NTKGreenfield message:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.nanotimekit.kNTKGreenfieldDecodeFaceManagerErrorDomain" code:a3 userInfo:v8];

  return v9;
}

@end