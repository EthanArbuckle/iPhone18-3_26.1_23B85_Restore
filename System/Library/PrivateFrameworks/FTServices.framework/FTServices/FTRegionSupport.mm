@interface FTRegionSupport
+ (id)sharedInstance;
- (id)regionForID:(id)d;
- (void)_buildMessageDeliveryIfNeeded;
- (void)dealloc;
- (void)flushRegions;
- (void)startLoading;
@end

@implementation FTRegionSupport

+ (id)sharedInstance
{
  if (qword_1ED7687C0 != -1)
  {
    sub_195964250();
  }

  v3 = qword_1ED768720;

  return v3;
}

- (void)dealloc
{
  [(FTMessageDelivery *)self->_delivery invalidate];
  v3.receiver = self;
  v3.super_class = FTRegionSupport;
  [(FTRegionSupport *)&v3 dealloc];
}

- (void)_buildMessageDeliveryIfNeeded
{
  if (!self->_delivery)
  {
    v4 = objc_alloc_init(FTMessageDelivery);
    delivery = self->_delivery;
    self->_delivery = v4;

    v6 = self->_delivery;

    [(FTMessageDelivery *)v6 setUserAgent:@"com.apple.facetime-region-query"];
  }
}

- (void)startLoading
{
  if (![(FTRegionSupport *)self isLoading]&& ![(FTRegionSupport *)self isLoaded])
  {
    [(FTRegionSupport *)self _buildMessageDeliveryIfNeeded];
    v3 = objc_alloc_init(FTGetRegionMetadataMessage);
    v4 = IMCurrentPreferredLanguage();
    [(FTGetRegionMetadataMessage *)v3 setLanguage:v4];

    [(IDSBaseMessage *)v3 setTimeout:600.0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195955A84;
    v5[3] = &unk_1E7435650;
    v5[4] = self;
    [(IDSBaseMessage *)v3 setCompletionBlock:v5];
    [(FTMessageDelivery *)self->_delivery sendMessage:v3];
  }
}

- (void)flushRegions
{
  regions = self->_regions;
  self->_regions = 0;

  delivery = self->_delivery;

  [(FTMessageDelivery *)delivery invalidate];
}

- (id)regionForID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  regions = [(FTRegionSupport *)self regions];
  v6 = [regions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(regions);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) regionWithID:dCopy];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [regions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end