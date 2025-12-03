@interface _BlastDoorLPSharingMetadataWrapper
- (_BlastDoorLPSharingMetadataWrapper)initWithCoder:(id)coder;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setMetadata:(id)metadata;
@end

@implementation _BlastDoorLPSharingMetadataWrapper

- (id)dataRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x277CCA308]];
  encodedData = [v3 encodedData];

  return encodedData;
}

- (_BlastDoorLPSharingMetadataWrapper)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPSharingMetadataWrapper;
  v5 = [(_BlastDoorLPSharingMetadataWrapper *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v5->_hasFetchedSubresources = [coderCopy decodeBoolForKey:@"hasFetchedSubresources"];
    v5->_hasCompletedFetch = [coderCopy decodeBoolForKey:@"hasCompletedFetch"];
    v8 = v5;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  metadata = self->_metadata;
  coderCopy = coder;
  [coderCopy encodeObject:metadata forKey:@"metadata"];
  [coderCopy encodeBool:self->_hasFetchedSubresources forKey:@"hasFetchedSubresources"];
  [coderCopy encodeBool:self->_hasCompletedFetch forKey:@"hasCompletedFetch"];
}

- (void)setMetadata:(id)metadata
{
  objc_storeStrong(&self->_metadata, metadata);
  metadataCopy = metadata;
  metadata = self->_metadata;
  objc_opt_class();
  LOBYTE(metadata) = objc_opt_isKindOfClass();

  self->_hasCompletedFetch = (metadata & 1) == 0;
}

@end