@interface CSToggleButtonConfiguration
+ (id)reverbButtonConfiguration;
+ (id)vocalButtonConfiguration;
- (CSToggleButtonConfiguration)initWithLightCount:(unint64_t)count caption:(id)caption;
- (void)setImage:(id)image forState:(unint64_t)state;
@end

@implementation CSToggleButtonConfiguration

+ (id)reverbButtonConfiguration
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v3 = [v2 localizedStringForKey:@"BUTTON_LABEL_REVERB" value:&stru_285797E10 table:0];

  v4 = [[CSToggleButtonConfiguration alloc] initWithLightCount:3 caption:v3];
  for (i = 0; i != 4; ++i)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu", @"sing_reverb", i];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [MEMORY[0x277D755B0] imageNamed:v6 inBundle:v7 compatibleWithTraitCollection:0];
    [(CSToggleButtonConfiguration *)v4 setImage:v8 forState:i];
  }

  return v4;
}

+ (id)vocalButtonConfiguration
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v3 = [v2 localizedStringForKey:@"BUTTON_LABEL_VOCAL" value:&stru_285797E10 table:0];

  v4 = [[CSToggleButtonConfiguration alloc] initWithLightCount:3 caption:v3];
  for (i = 0; i != 4; ++i)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu", @"sing_mic", i];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [MEMORY[0x277D755B0] imageNamed:v6 inBundle:v7 compatibleWithTraitCollection:0];
    [(CSToggleButtonConfiguration *)v4 setImage:v8 forState:i];
  }

  return v4;
}

- (CSToggleButtonConfiguration)initWithLightCount:(unint64_t)count caption:(id)caption
{
  captionCopy = caption;
  v16.receiver = self;
  v16.super_class = CSToggleButtonConfiguration;
  v8 = [(CSToggleButtonConfiguration *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_lightCount = count;
    objc_storeStrong(&v8->_caption, caption);
    array = [MEMORY[0x277CBEB18] array];
    iconImages = v9->_iconImages;
    v9->_iconImages = array;

    v12 = count + 1;
    do
    {
      v13 = v9->_iconImages;
      null = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)v13 addObject:null];

      --v12;
    }

    while (v12);
  }

  return v9;
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  if ([(CSToggleButtonConfiguration *)self lightCount]>= state)
  {
    [(NSMutableArray *)self->_iconImages setObject:imageCopy atIndexedSubscript:state];
  }

  else
  {
    v7 = ContinuitySingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(CSToggleButtonConfiguration *)self setImage:state forState:v7];
    }
  }
}

- (void)setImage:(NSObject *)a3 forState:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = 136315650;
  v5 = "[CSToggleButtonConfiguration setImage:forState:]";
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = [a1 lightCount];
  _os_log_fault_impl(&dword_2441FB000, a3, OS_LOG_TYPE_FAULT, "%s: buttonState (%lu) is larger than the light count (%lu)", &v4, 0x20u);
}

@end