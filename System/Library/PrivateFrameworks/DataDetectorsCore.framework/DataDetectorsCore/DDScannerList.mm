@interface DDScannerList
- (uint64_t)activateScanner:(uint64_t)scanner;
@end

@implementation DDScannerList

- (uint64_t)activateScanner:(uint64_t)scanner
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(scanner + 64);
    v9 = v4;
    if (v5)
    {
      v3 = [v5 addObject:v4];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v4, 0}];
      v7 = *(scanner + 64);
      *(scanner + 64) = v6;
    }

    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

@end