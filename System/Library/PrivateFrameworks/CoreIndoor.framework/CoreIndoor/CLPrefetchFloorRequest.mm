@interface CLPrefetchFloorRequest
+ (id)prefetchRequestForFloor:(id)floor inVenue:(id)venue lastRelevant:(id)relevant locationContext:(int64_t)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (CLPrefetchFloorRequest)initWithCoder:(id)coder;
- (CLPrefetchFloorRequest)initWithFloor:(id)floor inVenue:(id)venue lastRelevant:(id)relevant hasCompleteFloor:(BOOL)completeFloor allowCellularDownload:(BOOL)download locationContext:(int64_t)context ranking:(int64_t)ranking;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLPrefetchFloorRequest

+ (id)prefetchRequestForFloor:(id)floor inVenue:(id)venue lastRelevant:(id)relevant locationContext:(int64_t)context
{
  floorCopy = floor;
  venueCopy = venue;
  relevantCopy = relevant;
  v12 = [CLPrefetchFloorRequest alloc];
  Relevant_locationContext = objc_msgSend_initWithFloor_inVenue_lastRelevant_locationContext_(v12, v13, v14, v15, v16, floorCopy, venueCopy, relevantCopy, context);

  return Relevant_locationContext;
}

- (CLPrefetchFloorRequest)initWithFloor:(id)floor inVenue:(id)venue lastRelevant:(id)relevant hasCompleteFloor:(BOOL)completeFloor allowCellularDownload:(BOOL)download locationContext:(int64_t)context ranking:(int64_t)ranking
{
  floorCopy = floor;
  venueCopy = venue;
  relevantCopy = relevant;
  v23.receiver = self;
  v23.super_class = CLPrefetchFloorRequest;
  v19 = [(CLPrefetchFloorRequest *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_floorUuid, floor);
    objc_storeStrong(&v20->_venueUuid, venue);
    objc_storeStrong(&v20->_relevancy, relevant);
    v20->_hasCompleteFloor = completeFloor;
    v20->_allowCellularDownload = download;
    v20->_locationContext = context;
    v20->_priority = ranking;
    v21 = v20;
  }

  return v20;
}

- (CLPrefetchFloorRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10 = objc_msgSend_decodeObjectForKey_(coderCopy, v5, v6, v7, v8, @"floorUuid");
  if (!v10)
  {
    v10 = objc_msgSend_decodeObjectForKey_(coderCopy, v9, v11, v12, v13, @"floorUuid");
  }

  v14 = objc_msgSend_decodeObjectForKey_(coderCopy, v9, v11, v12, v13, @"venueUuid");
  if (v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = @"mismatch between pipelined/CoreIndoor.framework";
  }

  v20 = MEMORY[0x277CBEAA8];
  objc_msgSend_decodeDoubleForKey_(coderCopy, v15, v16, v17, v18, @"relevancy");
  v25 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v20, v21, v22, v23, v24);
  v30 = objc_msgSend_decodeBoolForKey_(coderCopy, v26, v27, v28, v29, @"hasCompleteFloor");
  v35 = objc_msgSend_decodeBoolForKey_(coderCopy, v31, v32, v33, v34, @"allowCellularDownload");
  v40 = objc_msgSend_decodeIntegerForKey_(coderCopy, v36, v37, v38, v39, @"locationContext");
  v45 = objc_msgSend_decodeIntegerForKey_(coderCopy, v41, v42, v43, v44, @"priority");
  hasCompleteFloor_allowCellularDownload_locationContext_priority = objc_msgSend_initWithFloor_inVenue_lastRelevant_hasCompleteFloor_allowCellularDownload_locationContext_priority_(self, v46, v47, v48, v49, v10, v19, v25, v30, v35, v40, v45);

  return hasCompleteFloor_allowCellularDownload_locationContext_priority;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, v5, v6, v7, self->_floorUuid, @"floorUuid");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v9, v10, v11, self->_floorUuid, @"floorUuid");
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v13, v14, v15, self->_venueUuid, @"venueUuid");
  objc_msgSend_timeIntervalSinceReferenceDate(self->_relevancy, v16, v17, v18, v19);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v20, v21, v22, v23, @"relevancy");
  objc_msgSend_encodeBool_forKey_(coderCopy, v24, v25, v26, v27, self->_hasCompleteFloor, @"hasCompleteFloor");
  objc_msgSend_encodeBool_forKey_(coderCopy, v28, v29, v30, v31, self->_allowCellularDownload, @"allowCellularDownload");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v32, v33, v34, v35, self->_locationContext, @"locationContext");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v36, v37, v38, v39, self->_priority, @"priority");
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToString = objc_msgSend_isEqualToString_(self->_floorUuid, v5, v6, v7, v8, equalCopy);
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToRequest_(self, v5, v6, v7, v8, equalCopy);
  }

  v10 = isEqualToString;

  return v10;
}

- (BOOL)isEqualToRequest:(id)request
{
  floorUuid = self->_floorUuid;
  v7 = objc_msgSend_floorUuid(request, a2, v3, v4, v5);
  LOBYTE(floorUuid) = objc_msgSend_isEqualToString_(floorUuid, v8, v9, v10, v11, v7);

  return floorUuid;
}

@end