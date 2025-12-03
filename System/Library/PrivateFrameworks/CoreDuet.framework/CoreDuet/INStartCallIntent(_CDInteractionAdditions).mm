@interface INStartCallIntent(_CDInteractionAdditions)
- (id)cd_derivedIntentIdentifier;
- (id)cd_sender;
- (uint64_t)cd_interactionMechanism;
@end

@implementation INStartCallIntent(_CDInteractionAdditions)

- (id)cd_sender
{
  contacts = [self contacts];
  v3 = [contacts count];

  if (v3 == 1)
  {
    contacts2 = [self contacts];
    firstObject = [contacts2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)cd_derivedIntentIdentifier
{
  notificationThreadIdentifier = [self notificationThreadIdentifier];
  if (!notificationThreadIdentifier)
  {
    v6 = 0;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  notificationThreadIdentifier2 = [self notificationThreadIdentifier];
  v4 = [notificationThreadIdentifier2 length];

  if (!v4)
  {
    v6 = 0;
    notificationThreadIdentifier = 0;
    goto LABEL_8;
  }

  notificationThreadIdentifier = NSStringFromSelector(sel_notificationThreadIdentifier);
  notificationThreadIdentifier3 = [self notificationThreadIdentifier];
  v6 = _CDNormalizeString(notificationThreadIdentifier3);

  v7 = 0;
  if (v6 && notificationThreadIdentifier)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", notificationThreadIdentifier, v6];
  }

LABEL_9:

  return v7;
}

- (uint64_t)cd_interactionMechanism
{
  if ([self callCapability] == 1 && objc_msgSend(self, "preferredCallProvider") == 1)
  {
    return 16;
  }

  if ([self callCapability] == 1 && objc_msgSend(self, "preferredCallProvider") == 2)
  {
    return 11;
  }

  if ([self callCapability] == 1)
  {
    return 0;
  }

  if ([self callCapability] == 2 && objc_msgSend(self, "preferredCallProvider") == 2)
  {
    return 17;
  }

  if ([self callCapability] == 2)
  {
    return 12;
  }

  return 16;
}

@end