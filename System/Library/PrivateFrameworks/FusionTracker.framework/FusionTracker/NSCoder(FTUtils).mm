@interface NSCoder(FTUtils)
- (CGFloat)fusionTracker_decodeCGRectForKey:()FTUtils;
- (void)fusionTracker_decodeCMTimeForKey:()FTUtils;
- (void)fusionTracker_encodeCGRect:()FTUtils forKey:;
- (void)fusionTracker_encodeCMTime:()FTUtils forKey:;
@end

@implementation NSCoder(FTUtils)

- (void)fusionTracker_encodeCMTime:()FTUtils forKey:
{
  v5 = *MEMORY[0x277CBECE8];
  v8 = *a3;
  v6 = a4;
  v7 = CMTimeCopyAsDictionary(&v8, v5);
  [a1 encodeObject:v7 forKey:{v6, *&v8.value, v8.epoch}];

  CFRelease(v7);
}

- (void)fusionTracker_decodeCMTimeForKey:()FTUtils
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  v6 = a2;
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:3];
  v8 = [v5 setWithArray:{v7, v10, v11}];
  v9 = [a1 decodeObjectOfClasses:v8 forKey:v6];

  CMTimeMakeFromDictionary(a3, v9);
}

- (void)fusionTracker_encodeCGRect:()FTUtils forKey:
{
  v12 = a7;
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v15);
  [a1 encodeObject:DictionaryRepresentation forKey:v12];

  CFRelease(DictionaryRepresentation);
}

- (CGFloat)fusionTracker_decodeCGRectForKey:()FTUtils
{
  v11[3] = *MEMORY[0x277D85DE8];
  memset(&v10, 0, sizeof(v10));
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v7 = [v4 setWithArray:v6];
  v8 = [a1 decodeObjectOfClasses:v7 forKey:v5];

  CGRectMakeWithDictionaryRepresentation(v8, &v10);
  return v10.origin.x;
}

@end