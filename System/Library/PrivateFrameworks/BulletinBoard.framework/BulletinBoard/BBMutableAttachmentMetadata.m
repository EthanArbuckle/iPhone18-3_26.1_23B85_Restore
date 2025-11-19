@interface BBMutableAttachmentMetadata
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIdentifier:(id)a3;
- (void)setThumbnailGeneratorUserInfo:(id)a3;
- (void)setURL:(id)a3;
- (void)setUniformType:(id)a3;
@end

@implementation BBMutableAttachmentMetadata

- (void)setURL:(id)a3
{
  v4 = [a3 copy];
  URL = self->super._URL;
  self->super._URL = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setUniformType:(id)a3
{
  v4 = [a3 copy];
  uniformType = self->super._uniformType;
  self->super._uniformType = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setThumbnailGeneratorUserInfo:(id)a3
{
  v4 = [a3 copy];
  thumbnailGeneratorUserInfo = self->super._thumbnailGeneratorUserInfo;
  self->super._thumbnailGeneratorUserInfo = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BBAttachmentMetadata allocWithZone:a3];
  v5 = [(BBAttachmentMetadata *)self type];
  v6 = [(BBAttachmentMetadata *)self URL];
  v7 = [(BBAttachmentMetadata *)self identifier];
  v8 = [(BBAttachmentMetadata *)self uniformType];
  v9 = [(BBAttachmentMetadata *)self thumbnailGeneratorUserInfo];
  v10 = [(BBAttachmentMetadata *)self thumbnailHidden];
  LOBYTE(v13) = [(BBAttachmentMetadata *)self hiddenFromDefaultExpandedView];
  v11 = [(BBAttachmentMetadata *)v4 _initWithType:v5 URL:v6 identifier:v7 uniformType:v8 thumbnailGeneratorUserInfo:v9 thumbnailHidden:v10 hiddenFromDefaultExpandedView:v13];

  return v11;
}

@end