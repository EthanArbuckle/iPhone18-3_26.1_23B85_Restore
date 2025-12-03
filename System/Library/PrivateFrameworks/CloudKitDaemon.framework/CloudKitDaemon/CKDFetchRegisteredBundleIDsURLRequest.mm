@interface CKDFetchRegisteredBundleIDsURLRequest
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchRegisteredBundleIDsURLRequest

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v3.receiver = self;
  v3.super_class = CKDFetchRegisteredBundleIDsURLRequest;
  [(CKDURLRequest *)&v3 fillOutEquivalencyPropertiesBuilder:builder];
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)generateRequestOperations
{
  v30 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
  {
    v6 = v3;
    v9 = objc_msgSend_requestUUID(self, v7, v8);
    v12 = objc_msgSend_container(self, v10, v11);
    v15 = objc_msgSend_containerID(v12, v13, v14);
    *buf = 138543618;
    v27 = v9;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "req: %{public}@, Getting Bundle IDs for container %{public}@", buf, 0x16u);
  }

  v16 = objc_msgSend_operationType(self, v4, v5);
  v18 = objc_msgSend_operationRequestWithType_(self, v17, v16);
  v19 = objc_opt_new();
  objc_msgSend_setBundlesForContainerRequest_(v18, v20, v19);

  v25 = v18;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, &v25, 1);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)requestDidParseProtobufObject:(id)object
{
  objectCopy = object;
  if (objc_msgSend_hasBundlesForContainerResponse(objectCopy, v5, v6))
  {
    v9 = objc_msgSend_bundlesForContainerResponse(objectCopy, v7, v8);
    v12 = objc_msgSend_bundleIDs(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_bundleIDsFetchedBlock(self, v7, v8);

  if (v13)
  {
    v16 = objc_msgSend_bundleIDsFetchedBlock(self, v14, v15);
    v19 = objc_msgSend_result(objectCopy, v17, v18);
    (v16)[2](v16, v12, v19);
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_bundleIDsFetchedBlock(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_bundleIDsFetchedBlock(self, v7, v8);
    v12 = objc_msgSend_result(failureCopy, v10, v11);
    (v9)[2](v9, 0, v12);
  }
}

@end