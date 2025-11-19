@interface BPSFollowUpAttributes
+ (id)attributeWithOptions:(id)a3;
@end

@implementation BPSFollowUpAttributes

+ (id)attributeWithOptions:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BPSFollowUpAttributes);
  v5 = [v3 objectForKeyedSubscript:@"title"];
  [(BPSFollowUpAttributes *)v4 setLocalizedTitle:v5];

  v6 = [v3 objectForKeyedSubscript:@"description"];
  [(BPSFollowUpAttributes *)v4 setLocalizedDescription:v6];

  v7 = [v3 objectForKeyedSubscript:@"followUpActions"];
  [(BPSFollowUpAttributes *)v4 setFollowUpActions:v7];

  v8 = [v3 objectForKeyedSubscript:@"notificationTitle"];
  v9 = [v3 objectForKeyedSubscript:@"notificationDescription"];

  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    [(BPSFollowUpAttributes *)v4 setWantNotification:1];
    [(BPSFollowUpAttributes *)v4 setLocalizedNotificationTitle:v8];
    [(BPSFollowUpAttributes *)v4 setLocalizedNotificationDescription:v9];
  }

  return v4;
}

@end