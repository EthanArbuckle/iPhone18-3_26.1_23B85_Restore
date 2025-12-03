@interface CCSetDonation
- (BOOL)_addItem:(id)item error:(id *)error;
- (BOOL)_flushItemsWithError:(id *)error;
- (BOOL)_remoteUpdateFromDeviceUUID:(id)d withType:(unsigned __int8)type mergeableDelta:(id)delta peerDeviceSite:(id)site relayedDeviceSites:(id)sites;
- (BOOL)_removeSourceItemIdentifier:(id)identifier error:(id *)error;
- (BOOL)updateRevisionToken:(id)token error:(id *)error;
- (CCSetDonation)init;
- (CCSetDonation)initWithName:(id)name itemType:(unsigned __int16)type service:(id)service errorCode:(int64_t)code priors:(id)priors flushThreshold:(unint64_t)threshold;
- (NSString)priorRevisionToken;
- (void)cancel;
- (void)dealloc;
@end

@implementation CCSetDonation

- (void)dealloc
{
  [(CCSetDonation *)self cancel];
  v3.receiver = self;
  v3.super_class = CCSetDonation;
  [(CCSetDonation *)&v3 dealloc];
}

- (void)cancel
{
  service = self->_service;
  if (service)
  {
    [(CCDonateService *)service abortSetDonation];
    v4 = self->_service;
    self->_service = 0;
  }
}

- (CCSetDonation)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSetDonation)initWithName:(id)name itemType:(unsigned __int16)type service:(id)service errorCode:(int64_t)code priors:(id)priors flushThreshold:(unint64_t)threshold
{
  nameCopy = name;
  serviceCopy = service;
  priorsCopy = priors;
  v36.receiver = self;
  v36.super_class = CCSetDonation;
  v17 = [(CCSetDonation *)&v36 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

  v35.receiver = v17;
  v35.super_class = CCSetDonation;
  v19 = [(CCSetDonation *)&v35 description];
  v20 = [v19 stringByAppendingString:nameCopy];
  v21 = *(v18 + 24);
  *(v18 + 24) = v20;

  objc_storeStrong((v18 + 8), service);
  *(v18 + 16) = type;
  *(v18 + 48) = threshold;
  *(v18 + 56) = 0;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = *(v18 + 32);
  *(v18 + 32) = v22;

  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = *(v18 + 40);
  *(v18 + 40) = v24;

  v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v27 = dispatch_queue_create("CCSetDonation.instance", v26);
  v28 = *(v18 + 96);
  *(v18 + 96) = v27;

  *(v18 + 64) = 0;
  objc_storeStrong((v18 + 80), priors);
  v29 = objc_opt_class();
  if (v29 == objc_opt_class() || (v30 = objc_opt_class(), v30 == objc_opt_class()))
  {
LABEL_9:
    *(v18 + 88) = code;
LABEL_10:
    v33 = v18;
    goto LABEL_11;
  }

  v31 = objc_opt_class();
  if (v31 == objc_opt_class())
  {
    code = 0;
    goto LABEL_9;
  }

  v32 = __biome_log_for_category();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [CCSetDonation initWithName:v18 itemType:v32 service:? errorCode:? priors:? flushThreshold:?];
  }

  v33 = 0;
LABEL_11:

  return v33;
}

uint64_t __84__CCSetDonation_fullSetDonationWithItemType_descriptors_serviceProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __91__CCSetDonation_incrementalSetDonationWithItemType_descriptors_serviceProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __78__CCSetDonation_deleteSetWithItemType_descriptors_serviceProvider_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = 0;
    [v5 _finishWithOptions:1 error:&v11];
    v8 = v11;
    v9 = *(a1 + 32);
    if (v8)
    {
      if (v9)
      {
        v10 = *(v9 + 16);
LABEL_9:
        v10();
      }
    }

    else if (v9)
    {
      v10 = *(v9 + 16);
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

LABEL_11:
}

uint64_t __90__CCSetDonation_remoteCRDTSetDonationWithItemType_descriptors_serviceProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke(uint64_t a1)
{
  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v4 = MEMORY[0x1E696AEC0];
  v5 = CCTypeIdentifierRegistryBridge();
  v6 = [v5 descriptionForTypeIdentifier:*(a1 + 40)];
  v7 = [v4 stringWithFormat:@"Invalid itemType: %@", v6, v11];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v3 errorWithDomain:@"com.apple.CascadeSets.Set" code:1 userInfo:v8];
  (*(v2 + 16))(v2, 0, v9);

  v10 = *MEMORY[0x1E69E9840];
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_4(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to establish connection to donate service for set donation %@", v2, *MEMORY[0x1E696A578]];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v1 errorWithDomain:@"com.apple.CascadeSets.Donate" code:6 userInfo:v5];
  (*(v3 + 16))(v3, 0, v6);

  v7 = *MEMORY[0x1E69E9840];
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_21(uint64_t a1, __int16 a2, uint64_t a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_22;
  block[3] = &unk_1E7C8B5B0;
  v18 = a2;
  v16 = *(a1 + 64);
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v19 = *(a1 + 72);
  v9 = *(a1 + 48);
  v17 = a3;
  v13 = v9;
  v14 = v7;
  v15 = *(a1 + 56);
  v10 = v7;
  dispatch_async(v8, block);
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_22(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = CCDonateServiceResponseDescription(*(a1 + 80));
  v3 = *(*(a1 + 64) + 8);
  if (*(v3 + 24) == 1)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_22_cold_1(v2, a1, v4);
    }
  }

  else
  {
    *(v3 + 24) = 1;
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v2;
      _os_log_impl(&dword_1B6DB2000, v5, OS_LOG_TYPE_DEFAULT, "Service responded to request for new donation %@ with %@", buf, 0x16u);
    }

    v7 = *(a1 + 80);
    if (v7 == 3 || v7 == 2 || v7 == 1)
    {
      v8 = objc_opt_class();
      v9 = 0;
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = CCDonateErrorCodeFromServiceResponse(v7);
      v20 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open set donation %@ - %@", *(a1 + 32), v2];
      v21 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v9 = [v10 errorWithDomain:@"com.apple.CascadeSets.Donate" code:v11 userInfo:v13];

      v8 = 0;
    }

    v14 = [v8 donationWithName:*(a1 + 32) itemType:*(a1 + 82) service:*(a1 + 40) errorCode:*(a1 + 72) priors:*(a1 + 48)];
    v4 = v14;
    if (v14)
    {
      v15 = [v14 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_26;
      block[3] = &unk_1E7C8B588;
      v19 = *(a1 + 56);
      v18 = v4;
      dispatch_async(v15, block);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_28(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client timed out waiting %lf seconds for donate service to accept a new donation %@", *(a1 + 72) / 1000000000.0, *(a1 + 32)];
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_28_cold_1(v4, v5);
    }

    [*(a1 + 40) terminateConnection:WeakRetained];
    v6 = *(a1 + 48);
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.CascadeSets.Donate" code:5 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSString)priorRevisionToken
{
  priors = [(CCSetDonation *)self priors];
  revisionToken = [priors revisionToken];

  return revisionToken;
}

- (BOOL)_addItem:(id)item error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (CCValidateNonNilField(@"item", itemCopy, error))
  {
    v7 = objc_opt_class();
    if (CCValidateIsInstanceOfExpectedClass(@"item", itemCopy, v7, error))
    {
      content = [itemCopy content];
      itemType = [objc_opt_class() itemType];
      itemType = self->_itemType;

      if (itemType == itemType)
      {
        metaContent = [itemCopy metaContent];
        itemType2 = [objc_opt_class() itemType];
        v13 = self->_itemType;

        if (itemType2 == v13)
        {
          content2 = [itemCopy content];
          data = [content2 data];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v28 = MEMORY[0x1E696ABC0];
            v52 = *MEMORY[0x1E696A578];
            itemCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item has invalid content buffer: %@", self, itemCopy];
            v53 = itemCopy;
            itemCopy2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
            v20 = v28;
            goto LABEL_17;
          }

          v16 = [data length];
          if (v16 >= 0xC801)
          {
            v17 = MEMORY[0x1E696ABC0];
            v50 = *MEMORY[0x1E696A578];
            itemCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item content must be less than %lu bytes, received %lu: %@", self, 51200, v16, itemCopy];
            v51 = itemCopy;
            itemCopy2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            v20 = v17;
LABEL_17:
            v29 = [v20 errorWithDomain:@"com.apple.CascadeSets.Item" code:4 userInfo:itemCopy2];
            CCSetError(error, v29);

            goto LABEL_12;
          }

          metaContent2 = [itemCopy metaContent];
          itemCopy = [metaContent2 data];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [itemCopy length])
          {
            v31 = [itemCopy length];
            if (v31 < 0xC801)
            {
              if (self->_service)
              {
                [(NSMutableArray *)self->_contentBuffers addObject:data];
                [(NSMutableArray *)self->_metaContentBuffers addObject:itemCopy];
                flushThreshold = self->_flushThreshold;
                v39 = v31 + v16 + self->_bufferSize;
                self->_bufferSize = v39;
                v21 = v39 < flushThreshold || [(CCSetDonation *)self _flushItemsWithError:error];
                goto LABEL_14;
              }

              name = self->_name;
              v41 = MEMORY[0x1E696AEC0];
              metaContent3 = [itemCopy metaContent];
              sourceItemIdentifier = [metaContent3 sourceItemIdentifier];
              v44 = [v41 stringWithFormat:@"add item with sourceItemIdentifier: %@", sourceItemIdentifier];
              v45 = _donationInactiveError(name, v44);
              CCSetError(error, v45);

LABEL_13:
              v21 = 0;
LABEL_14:

              goto LABEL_15;
            }

            v32 = MEMORY[0x1E696ABC0];
            v46 = *MEMORY[0x1E696A578];
            itemCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item meta content must be less than %lu bytes, received %lu: %@", self, 51200, v31, itemCopy];
            v47 = itemCopy2;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            v34 = [v32 errorWithDomain:@"com.apple.CascadeSets.Item" code:4 userInfo:v33];
            CCSetError(error, v34);
          }

          else
          {
            v35 = MEMORY[0x1E696ABC0];
            v48 = *MEMORY[0x1E696A578];
            itemCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item has invalid meta content buffer: %@", self, itemCopy];
            v49 = itemCopy2;
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            v37 = [v35 errorWithDomain:@"com.apple.CascadeSets.Item" code:4 userInfo:v36];
            CCSetError(error, v37);
          }

LABEL_12:

          goto LABEL_13;
        }

        v22 = MEMORY[0x1E696ABC0];
        v54 = *MEMORY[0x1E696A578];
        data = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item metaContent must have itemType: %hu. Received: %@", self, self->_itemType, itemCopy];
        v55 = data;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v55;
        v25 = &v54;
      }

      else
      {
        v22 = MEMORY[0x1E696ABC0];
        v56 = *MEMORY[0x1E696A578];
        data = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item content must have itemType: %hu. Received: %@", self, self->_itemType, itemCopy];
        v57[0] = data;
        v23 = MEMORY[0x1E695DF20];
        v24 = v57;
        v25 = &v56;
      }

      itemCopy = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
      itemCopy2 = [v22 errorWithDomain:@"com.apple.CascadeSets.Set" code:1 userInfo:itemCopy];
      CCSetError(error, itemCopy2);
      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_15:

  v26 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_flushItemsWithError:(id *)error
{
  if (![(NSMutableArray *)self->_contentBuffers count])
  {
    return 1;
  }

  v5 = [(NSMutableArray *)self->_contentBuffers copy];
  v6 = [(NSMutableArray *)self->_metaContentBuffers copy];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  service = self->_service;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__CCSetDonation__flushItemsWithError___block_invoke;
  v15[3] = &unk_1E7C8B628;
  v15[4] = &v16;
  [(CCDonateService *)service addItemsWithContents:v5 metaContents:v6 completion:v15];
  [(NSMutableArray *)self->_contentBuffers removeAllObjects];
  [(NSMutableArray *)self->_metaContentBuffers removeAllObjects];
  self->_bufferSize = 0;
  v8 = *(v17 + 12);
  v9 = v8 == 7;
  if (v8 != 7)
  {
    name = self->_name;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"add %u item(s)", -[NSMutableArray count](self->_contentBuffers, "count")];
    v12 = _donationResponseError(name, v11, *(v17 + 12));
    CCSetError(error, v12);

    v13 = self->_service;
    self->_service = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (BOOL)_removeSourceItemIdentifier:(id)identifier error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = objc_opt_class();
  if (CCValidateIsInstanceOfExpectedClass(@"sourceItemIdentifier", identifierCopy, v7, error))
  {
    v8 = [identifierCopy copy];
    if ([v8 length])
    {
      service = self->_service;
      if (service)
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v29 = 0;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __51__CCSetDonation__removeSourceItemIdentifier_error___block_invoke;
        v25[3] = &unk_1E7C8B628;
        v25[4] = &v26;
        [(CCDonateService *)service removeSourceItemIdentifier:v8 completion:v25];
        v10 = *(v27 + 12);
        v11 = v10 == 7;
        if (v10 != 7)
        {
          name = self->_name;
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remove sourceItemIdentifier: %@", v8];
          v14 = _donationResponseError(name, v13, *(v27 + 12));
          CCSetError(error, v14);

          v15 = self->_service;
          self->_service = 0;
        }

        _Block_object_dispose(&v26, 8);
        goto LABEL_11;
      }

      v20 = self->_name;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remove sourceItemIdentifier: %@", v8];
      v22 = _donationInactiveError(v20, v21);
      CCSetError(error, v22);
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ sourceItemIdentifier is invalid: %@", self, v8];
      v31[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v19 = [v16 errorWithDomain:@"com.apple.CascadeSets.Item" code:7 userInfo:v18];
      CCSetError(error, v19);
    }

    v11 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)updateRevisionToken:(id)token error:(id *)error
{
  tokenCopy = token;
  v7 = objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass(@"revisionToken", tokenCopy, v7, error);
  if (IsInstanceOfExpectedClass)
  {
    v9 = [tokenCopy copy];
    v10 = 72;
  }

  else
  {
    v9 = 0;
    v10 = 8;
  }

  v11 = *(&self->super.isa + v10);
  *(&self->super.isa + v10) = v9;

  return IsInstanceOfExpectedClass;
}

- (BOOL)_remoteUpdateFromDeviceUUID:(id)d withType:(unsigned __int8)type mergeableDelta:(id)delta peerDeviceSite:(id)site relayedDeviceSites:(id)sites
{
  typeCopy = type;
  dCopy = d;
  deltaCopy = delta;
  siteCopy = site;
  sitesCopy = sites;
  if ((typeCopy - 1) >= 3)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CCSetDonation _remoteUpdateFromDeviceUUID:typeCopy withType:v18 mergeableDelta:? peerDeviceSite:? relayedDeviceSites:?];
    }

    v17 = 0;
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    service = self->_service;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __103__CCSetDonation__remoteUpdateFromDeviceUUID_withType_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke;
    v20[3] = &unk_1E7C8B628;
    v20[4] = &v21;
    [(CCDonateService *)service remoteUpdateFromDeviceUUID:dCopy options:(0x10000800040uLL >> (16 * ((typeCopy - 1) & 0xFu))) & 0x1C0 mergeableDelta:deltaCopy peerDeviceSite:siteCopy relayedDeviceSites:sitesCopy completion:v20];
    v17 = *(v22 + 12) == 7;
    _Block_object_dispose(&v21, 8);
  }

  return v17;
}

- (void)initWithName:(uint64_t)a1 itemType:(NSObject *)a2 service:errorCode:priors:flushThreshold:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Invalid donation subclass: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_22_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_DEBUG, "Ignoring service response (%@) for timed out request %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_28_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "%@ - invalidating connection", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_remoteUpdateFromDeviceUUID:(int)a1 withType:(NSObject *)a2 mergeableDelta:peerDeviceSite:relayedDeviceSites:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unsupported remote update type: %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end