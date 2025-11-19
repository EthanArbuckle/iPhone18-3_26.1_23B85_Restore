@interface FCPromoteAccessibleHeadline
@end

@implementation FCPromoteAccessibleHeadline

uint64_t ___FCPromoteAccessibleHeadline_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasThumbnail])
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v5 isPaid];
    v7 = [v5 isBundlePaid];
    v8 = [v5 sourceChannel];
    v9 = [v8 identifier];
    v10 = v4;
    v11 = v9;
    v12 = [v10 bundleSubscriptionProvider];
    v13 = [v10 purchaseProvider];
    v14 = v12;
    v15 = v13;
    v16 = v11;
    if ((v6 & 1) != 0 || v7)
    {
      v18 = v6 ^ 1;
      if (!v15)
      {
        v18 = 1;
      }

      if ((v18 & 1) != 0 || ([v15 purchasedTagIDs], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "containsObject:", v16), v19, (v20 & 1) == 0))
      {
        v21 = v7 ^ 1;
        if (!v14)
        {
          v21 = 1;
        }

        if (v21)
        {
          goto LABEL_16;
        }

        v22 = v14;
        v23 = v16;
        if (!v23)
        {
          goto LABEL_15;
        }

        [v22 bundleSubscription];
        v24 = v34 = v23;
        v32 = objc_getAssociatedObject(v24, (v24 + 1));
        v25 = [v32 unsignedIntegerValue];
        v26 = v25;
        objc_getAssociatedObject(v24, ~v25);
        v27 = v35 = v22;
        v28 = [v27 unsignedIntegerValue] ^ v26;

        v22 = v35;
        v23 = v34;
        if ((v28 & 1) == 0)
        {
LABEL_15:

LABEL_16:
          v17 = 0;
          goto LABEL_17;
        }

        v30 = [v35 bundleSubscription];
        v31 = [v30 bundleChannelIDs];
        v33 = [v31 containsObject:v34];

        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    v17 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v17 = 0;
LABEL_18:

  return v17;
}

@end