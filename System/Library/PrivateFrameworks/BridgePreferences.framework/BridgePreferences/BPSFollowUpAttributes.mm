@interface BPSFollowUpAttributes
+ (id)attributeWithOptions:(id)options;
@end

@implementation BPSFollowUpAttributes

+ (id)attributeWithOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(BPSFollowUpAttributes);
  v5 = [optionsCopy objectForKeyedSubscript:@"title"];
  [(BPSFollowUpAttributes *)v4 setLocalizedTitle:v5];

  v6 = [optionsCopy objectForKeyedSubscript:@"description"];
  [(BPSFollowUpAttributes *)v4 setLocalizedDescription:v6];

  v7 = [optionsCopy objectForKeyedSubscript:@"followUpActions"];
  [(BPSFollowUpAttributes *)v4 setFollowUpActions:v7];

  v8 = [optionsCopy objectForKeyedSubscript:@"notificationTitle"];
  v9 = [optionsCopy objectForKeyedSubscript:@"notificationDescription"];

  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    [(BPSFollowUpAttributes *)v4 setWantNotification:1];
    [(BPSFollowUpAttributes *)v4 setLocalizedNotificationTitle:v8];
    [(BPSFollowUpAttributes *)v4 setLocalizedNotificationDescription:v9];
  }

  return v4;
}

@end