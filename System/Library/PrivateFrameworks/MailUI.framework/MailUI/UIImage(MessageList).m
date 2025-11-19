@interface UIImage(MessageList)
+ (id)mf_imageForChevronType:()MessageList;
+ (id)mf_imageForSummarySymbolWithFont:()MessageList;
@end

@implementation UIImage(MessageList)

+ (id)mf_imageForChevronType:()MessageList
{
  v4 = [MEMORY[0x277D755B8] mf_systemImageNamed:*MEMORY[0x277CD67E0] forView:10];
  v5 = &mf_imageForChevronType__singleChevron;
  v6 = mf_imageForChevronType__singleChevron;
  mf_imageForChevronType__singleChevron = v4;

  v7 = [MEMORY[0x277D755B8] mf_systemImageNamed:*MEMORY[0x277CD67E8] forView:11];
  v8 = mf_imageForChevronType__chevronCircle;
  mf_imageForChevronType__chevronCircle = v7;

  if (a3 == 1)
  {
    goto LABEL_4;
  }

  if (a3 == 2)
  {
    v5 = &mf_imageForChevronType__chevronCircle;
LABEL_4:
    v9 = *v5;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)mf_imageForSummarySymbolWithFont:()MessageList
{
  v3 = [MEMORY[0x277D755D0] configurationWithFont:a3 scale:1];
  v4 = [MEMORY[0x277D755B8] _systemImageNamed:@"text.line.2.summary" withConfiguration:v3];
  v5 = [v4 imageWithRenderingMode:2];

  return v5;
}

@end