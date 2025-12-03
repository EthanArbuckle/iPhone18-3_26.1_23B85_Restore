@interface FMTimedMetadataItem
- (FMTimedMetadataItem)initWithIdentifier:(id)identifier name:(id)name timeRange:(id *)range values:(id)values;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)adjustDurationTo:(id *)to;
@end

@implementation FMTimedMetadataItem

- (FMTimedMetadataItem)initWithIdentifier:(id)identifier name:(id)name timeRange:(id *)range values:(id)values
{
  identifierCopy = identifier;
  nameCopy = name;
  valuesCopy = values;
  v19.receiver = self;
  v19.super_class = FMTimedMetadataItem;
  v14 = [(FMTimedMetadataItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_name, name);
    v16 = *&range->var0.var0;
    v17 = *&range->var1.var1;
    *&v15->_timeRange.start.epoch = *&range->var0.var3;
    *&v15->_timeRange.duration.timescale = v17;
    *&v15->_timeRange.start.value = v16;
    objc_storeStrong(&v15->_values, values);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_identifier(self, v15, v16, v17, v18);
  v20 = *(v14 + 8);
  *(v14 + 8) = v19;

  v25 = objc_msgSend_name(self, v21, v22, v23, v24);
  v26 = *(v14 + 16);
  *(v14 + 16) = v25;

  objc_msgSend_timeRange(self, v27, v28, v29, v30);
  v32 = v41;
  v31 = v42;
  *(v14 + 32) = v40;
  *(v14 + 48) = v32;
  *(v14 + 64) = v31;
  v37 = objc_msgSend_values(self, v33, v34, v35, v36);
  v38 = *(v14 + 24);
  *(v14 + 24) = v37;

  return v14;
}

- (void)adjustDurationTo:(id *)to
{
  start = self->_timeRange.start;
  v5 = *to;
  CMTimeRangeMake(&v7, &start, &v5);
  v4 = *&v7.start.epoch;
  *&self->_timeRange.start.value = *&v7.start.value;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.duration.timescale = *&v7.duration.timescale;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_name(self, a2, v2, v3, v4);
  objc_msgSend_timeRange(self, v8, v9, v10, v11);
  time = v28;
  Seconds = CMTimeGetSeconds(&time);
  v21 = objc_msgSend_values(self, v13, v14, v15, v16);
  if (v21)
  {
    v22 = objc_msgSend_values(self, v17, v18, v19, v20);
    v26 = objc_msgSend_stringWithFormat_(v6, v23, @"%@ (%1.2f) - %@", v24, v25, v7, *&Seconds, v22);
  }

  else
  {
    v26 = objc_msgSend_stringWithFormat_(v6, v17, @"%@ (%1.2f) - %@", v19, v20, v7, *&Seconds, &stru_285EA09B0);
  }

  return v26;
}

@end