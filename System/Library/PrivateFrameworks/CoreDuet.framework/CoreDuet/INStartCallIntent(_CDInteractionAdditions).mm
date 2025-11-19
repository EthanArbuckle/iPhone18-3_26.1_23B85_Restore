@interface INStartCallIntent(_CDInteractionAdditions)
- (id)cd_derivedIntentIdentifier;
- (id)cd_sender;
- (uint64_t)cd_interactionMechanism;
@end

@implementation INStartCallIntent(_CDInteractionAdditions)

- (id)cd_sender
{
  v2 = [a1 contacts];
  v3 = [v2 count];

  if (v3 == 1)
  {
    v4 = [a1 contacts];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cd_derivedIntentIdentifier
{
  v2 = [a1 notificationThreadIdentifier];
  if (!v2)
  {
    v6 = 0;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = [a1 notificationThreadIdentifier];
  v4 = [v3 length];

  if (!v4)
  {
    v6 = 0;
    v2 = 0;
    goto LABEL_8;
  }

  v2 = NSStringFromSelector(sel_notificationThreadIdentifier);
  v5 = [a1 notificationThreadIdentifier];
  v6 = _CDNormalizeString(v5);

  v7 = 0;
  if (v6 && v2)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", v2, v6];
  }

LABEL_9:

  return v7;
}

- (uint64_t)cd_interactionMechanism
{
  if ([a1 callCapability] == 1 && objc_msgSend(a1, "preferredCallProvider") == 1)
  {
    return 16;
  }

  if ([a1 callCapability] == 1 && objc_msgSend(a1, "preferredCallProvider") == 2)
  {
    return 11;
  }

  if ([a1 callCapability] == 1)
  {
    return 0;
  }

  if ([a1 callCapability] == 2 && objc_msgSend(a1, "preferredCallProvider") == 2)
  {
    return 17;
  }

  if ([a1 callCapability] == 2)
  {
    return 12;
  }

  return 16;
}

@end