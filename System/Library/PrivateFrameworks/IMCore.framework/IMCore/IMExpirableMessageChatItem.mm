@interface IMExpirableMessageChatItem
- (BOOL)isPlayed;
- (BOOL)isSaved;
@end

@implementation IMExpirableMessageChatItem

- (BOOL)isPlayed
{
  v3 = objc_msgSend__item(self, a2, v2);
  isPlayed = objc_msgSend_isPlayed(v3, v4, v5);

  return isPlayed;
}

- (BOOL)isSaved
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_expireState(v3, v4, v5) == 3;

  return v6;
}

@end