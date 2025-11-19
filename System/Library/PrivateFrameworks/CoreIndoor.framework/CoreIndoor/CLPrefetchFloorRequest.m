@interface CLPrefetchFloorRequest
+ (id)prefetchRequestForFloor:(id)a3 inVenue:(id)a4 lastRelevant:(id)a5 locationContext:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (CLPrefetchFloorRequest)initWithCoder:(id)a3;
- (CLPrefetchFloorRequest)initWithFloor:(id)a3 inVenue:(id)a4 lastRelevant:(id)a5 hasCompleteFloor:(BOOL)a6 allowCellularDownload:(BOOL)a7 locationContext:(int64_t)a8 ranking:(int64_t)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLPrefetchFloorRequest

+ (id)prefetchRequestForFloor:(id)a3 inVenue:(id)a4 lastRelevant:(id)a5 locationContext:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [CLPrefetchFloorRequest alloc];
  Relevant_locationContext = objc_msgSend_initWithFloor_inVenue_lastRelevant_locationContext_(v12, v13, v14, v15, v16, v9, v10, v11, a6);

  return Relevant_locationContext;
}

- (CLPrefetchFloorRequest)initWithFloor:(id)a3 inVenue:(id)a4 lastRelevant:(id)a5 hasCompleteFloor:(BOOL)a6 allowCellularDownload:(BOOL)a7 locationContext:(int64_t)a8 ranking:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v23.receiver = self;
  v23.super_class = CLPrefetchFloorRequest;
  v19 = [(CLPrefetchFloorRequest *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_floorUuid, a3);
    objc_storeStrong(&v20->_venueUuid, a4);
    objc_storeStrong(&v20->_relevancy, a5);
    v20->_hasCompleteFloor = a6;
    v20->_allowCellularDownload = a7;
    v20->_locationContext = a8;
    v20->_priority = a9;
    v21 = v20;
  }

  return v20;
}

- (CLPrefetchFloorRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_decodeObjectForKey_(v4, v5, v6, v7, v8, @"floorUuid");
  if (!v10)
  {
    v10 = objc_msgSend_decodeObjectForKey_(v4, v9, v11, v12, v13, @"floorUuid");
  }

  v14 = objc_msgSend_decodeObjectForKey_(v4, v9, v11, v12, v13, @"venueUuid");
  if (v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = @"mismatch between pipelined/CoreIndoor.framework";
  }

  v20 = MEMORY[0x277CBEAA8];
  objc_msgSend_decodeDoubleForKey_(v4, v15, v16, v17, v18, @"relevancy");
  v25 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v20, v21, v22, v23, v24);
  v30 = objc_msgSend_decodeBoolForKey_(v4, v26, v27, v28, v29, @"hasCompleteFloor");
  v35 = objc_msgSend_decodeBoolForKey_(v4, v31, v32, v33, v34, @"allowCellularDownload");
  v40 = objc_msgSend_decodeIntegerForKey_(v4, v36, v37, v38, v39, @"locationContext");
  v45 = objc_msgSend_decodeIntegerForKey_(v4, v41, v42, v43, v44, @"priority");
  hasCompleteFloor_allowCellularDownload_locationContext_priority = objc_msgSend_initWithFloor_inVenue_lastRelevant_hasCompleteFloor_allowCellularDownload_locationContext_priority_(self, v46, v47, v48, v49, v10, v19, v25, v30, v35, v40, v45);

  return hasCompleteFloor_allowCellularDownload_locationContext_priority;
}

- (void)encodeWithCoder:(id)a3
{
  v40 = a3;
  objc_msgSend_encodeObject_forKey_(v40, v4, v5, v6, v7, self->_floorUuid, @"floorUuid");
  objc_msgSend_encodeObject_forKey_(v40, v8, v9, v10, v11, self->_floorUuid, @"floorUuid");
  objc_msgSend_encodeObject_forKey_(v40, v12, v13, v14, v15, self->_venueUuid, @"venueUuid");
  objc_msgSend_timeIntervalSinceReferenceDate(self->_relevancy, v16, v17, v18, v19);
  objc_msgSend_encodeDouble_forKey_(v40, v20, v21, v22, v23, @"relevancy");
  objc_msgSend_encodeBool_forKey_(v40, v24, v25, v26, v27, self->_hasCompleteFloor, @"hasCompleteFloor");
  objc_msgSend_encodeBool_forKey_(v40, v28, v29, v30, v31, self->_allowCellularDownload, @"allowCellularDownload");
  objc_msgSend_encodeInteger_forKey_(v40, v32, v33, v34, v35, self->_locationContext, @"locationContext");
  objc_msgSend_encodeInteger_forKey_(v40, v36, v37, v38, v39, self->_priority, @"priority");
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToString = objc_msgSend_isEqualToString_(self->_floorUuid, v5, v6, v7, v8, v4);
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToRequest_(self, v5, v6, v7, v8, v4);
  }

  v10 = isEqualToString;

  return v10;
}

- (BOOL)isEqualToRequest:(id)a3
{
  floorUuid = self->_floorUuid;
  v7 = objc_msgSend_floorUuid(a3, a2, v3, v4, v5);
  LOBYTE(floorUuid) = objc_msgSend_isEqualToString_(floorUuid, v8, v9, v10, v11, v7);

  return floorUuid;
}

@end