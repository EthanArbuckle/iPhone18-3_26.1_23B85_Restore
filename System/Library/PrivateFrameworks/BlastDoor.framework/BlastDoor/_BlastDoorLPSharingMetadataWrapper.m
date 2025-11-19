@interface _BlastDoorLPSharingMetadataWrapper
- (_BlastDoorLPSharingMetadataWrapper)initWithCoder:(id)a3;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setMetadata:(id)a3;
@end

@implementation _BlastDoorLPSharingMetadataWrapper

- (id)dataRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x277CCA308]];
  v4 = [v3 encodedData];

  return v4;
}

- (_BlastDoorLPSharingMetadataWrapper)initWithCoder:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPSharingMetadataWrapper;
  v5 = [(_BlastDoorLPSharingMetadataWrapper *)&v11 init];
  if (v5)
  {
    v6 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v5->_hasFetchedSubresources = [v4 decodeBoolForKey:@"hasFetchedSubresources"];
    v5->_hasCompletedFetch = [v4 decodeBoolForKey:@"hasCompletedFetch"];
    v8 = v5;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  metadata = self->_metadata;
  v5 = a3;
  [v5 encodeObject:metadata forKey:@"metadata"];
  [v5 encodeBool:self->_hasFetchedSubresources forKey:@"hasFetchedSubresources"];
  [v5 encodeBool:self->_hasCompletedFetch forKey:@"hasCompletedFetch"];
}

- (void)setMetadata:(id)a3
{
  objc_storeStrong(&self->_metadata, a3);
  v5 = a3;
  metadata = self->_metadata;
  objc_opt_class();
  LOBYTE(metadata) = objc_opt_isKindOfClass();

  self->_hasCompletedFetch = (metadata & 1) == 0;
}

@end