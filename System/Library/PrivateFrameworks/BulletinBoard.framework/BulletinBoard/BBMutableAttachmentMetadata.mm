@interface BBMutableAttachmentMetadata
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIdentifier:(id)identifier;
- (void)setThumbnailGeneratorUserInfo:(id)info;
- (void)setURL:(id)l;
- (void)setUniformType:(id)type;
@end

@implementation BBMutableAttachmentMetadata

- (void)setURL:(id)l
{
  v4 = [l copy];
  URL = self->super._URL;
  self->super._URL = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setUniformType:(id)type
{
  v4 = [type copy];
  uniformType = self->super._uniformType;
  self->super._uniformType = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setThumbnailGeneratorUserInfo:(id)info
{
  v4 = [info copy];
  thumbnailGeneratorUserInfo = self->super._thumbnailGeneratorUserInfo;
  self->super._thumbnailGeneratorUserInfo = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BBAttachmentMetadata allocWithZone:zone];
  type = [(BBAttachmentMetadata *)self type];
  v6 = [(BBAttachmentMetadata *)self URL];
  identifier = [(BBAttachmentMetadata *)self identifier];
  uniformType = [(BBAttachmentMetadata *)self uniformType];
  thumbnailGeneratorUserInfo = [(BBAttachmentMetadata *)self thumbnailGeneratorUserInfo];
  thumbnailHidden = [(BBAttachmentMetadata *)self thumbnailHidden];
  LOBYTE(v13) = [(BBAttachmentMetadata *)self hiddenFromDefaultExpandedView];
  v11 = [(BBAttachmentMetadata *)v4 _initWithType:type URL:v6 identifier:identifier uniformType:uniformType thumbnailGeneratorUserInfo:thumbnailGeneratorUserInfo thumbnailHidden:thumbnailHidden hiddenFromDefaultExpandedView:v13];

  return v11;
}

@end