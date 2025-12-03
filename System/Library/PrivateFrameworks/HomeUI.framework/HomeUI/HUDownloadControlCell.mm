@interface HUDownloadControlCell
- (HUDownloadControlCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)description;
- (void)layoutSubviews;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUDownloadControlCell

- (HUDownloadControlCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = HUDownloadControlCell;
  v4 = [(HUDownloadControlCell *)&v9 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(HUDownloadControl);
    [(HUDownloadControlCell *)v4 setDownloadControl:v5];

    downloadControl = [(HUDownloadControlCell *)v4 downloadControl];
    [downloadControl setControlStatus:1 animated:{0x3FF0000000000000, 0}];

    downloadControl2 = [(HUDownloadControlCell *)v4 downloadControl];
    [(HUDownloadControlCell *)v4 setAccessoryView:downloadControl2];
  }

  return v4;
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  item = [(HUDownloadControlCell *)self item];
  latestResults = [item latestResults];

  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textLabel = [(HUDownloadControlCell *)self textLabel];
  [textLabel setText:v6];

  labelColor = [MEMORY[0x277D75348] labelColor];
  textLabel2 = [(HUDownloadControlCell *)self textLabel];
  [textLabel2 setTextColor:labelColor];

  textLabel3 = [(HUDownloadControlCell *)self textLabel];
  [textLabel3 setNumberOfLines:0];

  v11 = *MEMORY[0x277D13E20];
  v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v12)
  {
    v13 = [latestResults objectForKeyedSubscript:v11];
    detailTextLabel = [(HUDownloadControlCell *)self detailTextLabel];
    [detailTextLabel setText:v13];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    detailTextLabel2 = [(HUDownloadControlCell *)self detailTextLabel];
    [detailTextLabel2 setTextColor:systemGrayColor];

    detailTextLabel3 = [(HUDownloadControlCell *)self detailTextLabel];
    [detailTextLabel3 setNumberOfLines:0];
  }

  else
  {
    detailTextLabel3 = [(HUDownloadControlCell *)self detailTextLabel];
    [detailTextLabel3 setText:0];
  }

  downloadControl = [(HUDownloadControlCell *)self downloadControl];
  v19 = [downloadControl titleForControlStatusType:1];

  v20 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
  if (([v19 isEqualToString:v20] & 1) == 0)
  {
    downloadControl2 = [(HUDownloadControlCell *)self downloadControl];
    [downloadControl2 setTitle:v20 forControlStatusType:1];

    downloadControl3 = [(HUDownloadControlCell *)self downloadControl];
    [downloadControl3 sizeToFit];
  }

  v23 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140F0]];
  bOOLValue = [v23 BOOLValue];

  if (bOOLValue)
  {
    v25 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14108]];
    v26 = v25;
    if (v25)
    {
      [v25 floatValue];
      v28 = v27;
      v29 = 4;
    }

    else
    {
      v28 = 1.0;
      v29 = 3;
    }
  }

  else
  {
    v28 = 1.0;
    v29 = 1;
  }

  downloadControl4 = [(HUDownloadControlCell *)self downloadControl];
  [downloadControl4 setControlStatus:v29 animated:{*&v28, animationCopy}];

  v31 = v29 == 1;
  downloadControl5 = [(HUDownloadControlCell *)self downloadControl];
  [downloadControl5 setEnabled:v31];

  v33 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  LODWORD(downloadControl5) = [v33 BOOLValue];

  if (downloadControl5)
  {
    downloadControl6 = [(HUDownloadControlCell *)self downloadControl];
    [downloadControl6 setEnabled:0];
  }

  v35 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DF8]];
  bOOLValue2 = [v35 BOOLValue];
  downloadControl7 = [(HUDownloadControlCell *)self downloadControl];
  [downloadControl7 setHidden:bOOLValue2];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HUDownloadControlCell;
  [(HUDownloadControlCell *)&v14 layoutSubviews];
  downloadControl = [(HUDownloadControlCell *)self downloadControl];
  [downloadControl frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  downloadControl2 = [(HUDownloadControlCell *)self downloadControl];
  [downloadControl2 intrinsicContentSize];
  v12 = v11;

  downloadControl3 = [(HUDownloadControlCell *)self downloadControl];
  [downloadControl3 setFrame:{v5, v7, v12, v9}];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  textLabel = [(HUDownloadControlCell *)self textLabel];
  text = [textLabel text];
  [v3 appendString:text withName:@"text"];

  build = [v3 build];

  return build;
}

@end