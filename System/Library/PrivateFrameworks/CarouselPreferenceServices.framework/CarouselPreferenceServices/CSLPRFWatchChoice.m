@interface CSLPRFWatchChoice
+ (id)watchChoice:(int64_t)a3;
+ (id)watchChoices;
- (CSLPRFWatchChoice)initWithChoice:(int64_t)a3;
@end

@implementation CSLPRFWatchChoice

- (CSLPRFWatchChoice)initWithChoice:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = CSLPRFWatchChoice;
  v4 = [(CSLPRFWatchChoice *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_choice = a3;
    if (a3 == 2)
    {
      label = v4->_label;
      v4->_label = @"APP_VIEW_CHOICE_LIST_VIEW";

      v10 = [CSLPRFDeviceUtilities screenImageNameWithPrefix:@"Screen-CarouselList"];
      screenImageName = v5->_screenImageName;
      v5->_screenImageName = v10;

      v5->_swapForRightToLeft = 1;
    }

    else if (a3 == 1)
    {
      v6 = v4->_label;
      v4->_label = @"APP_VIEW_CHOICE_GRID_VIEW";

      v7 = [CSLPRFDeviceUtilities screenImageNameWithPrefix:@"Screen-Carousel"];
      v8 = v5->_screenImageName;
      v5->_screenImageName = v7;
    }
  }

  return v5;
}

+ (id)watchChoice:(int64_t)a3
{
  v3 = [[a1 alloc] initWithChoice:a3];

  return v3;
}

+ (id)watchChoices
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [a1 watchChoice:1];
  v8[0] = v3;
  v4 = [a1 watchChoice:2];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end