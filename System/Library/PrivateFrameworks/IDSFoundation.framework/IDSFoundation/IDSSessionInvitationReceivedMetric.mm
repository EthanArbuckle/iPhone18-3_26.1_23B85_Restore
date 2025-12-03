@interface IDSSessionInvitationReceivedMetric
- (IDSSessionInvitationReceivedMetric)initWithGuid:(id)guid;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionInvitationReceivedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSSessionInvitationReceivedMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  return v3;
}

- (IDSSessionInvitationReceivedMetric)initWithGuid:(id)guid
{
  guidCopy = guid;
  v9.receiver = self;
  v9.super_class = IDSSessionInvitationReceivedMetric;
  v6 = [(IDSSessionInvitationReceivedMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_guid, guid);
  }

  return v7;
}

@end