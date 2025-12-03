@interface MRRemoteArtwork
- (MRRemoteArtwork)initWithArtworkURLString:(id)string templateData:(id)data;
- (MRRemoteArtwork)initWithCoder:(id)coder;
- (MRRemoteArtwork)initWithProtobuf:(id)protobuf;
- (MRRemoteArtwork)initWithProtobufData:(id)data;
- (id)description;
- (id)protobufData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRRemoteArtwork

- (MRRemoteArtwork)initWithArtworkURLString:(id)string templateData:(id)data
{
  stringCopy = string;
  dataCopy = data;
  if (!(stringCopy | dataCopy))
  {
    [MRRemoteArtwork initWithArtworkURLString:a2 templateData:self];
  }

  v15.receiver = self;
  v15.super_class = MRRemoteArtwork;
  v9 = [(MRRemoteArtwork *)&v15 init];
  if (v9)
  {
    v10 = [stringCopy copy];
    artworkURLString = v9->_artworkURLString;
    v9->_artworkURLString = v10;

    v12 = [dataCopy copy];
    artworkURLTemplateData = v9->_artworkURLTemplateData;
    v9->_artworkURLTemplateData = v12;
  }

  return v9;
}

- (MRRemoteArtwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MRRemoteArtwork;
  v5 = [(MRRemoteArtwork *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artworkURLString"];
    artworkURLString = v5->_artworkURLString;
    v5->_artworkURLString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artworkURLTemplateData"];
    artworkURLTemplateData = v5->_artworkURLTemplateData;
    v5->_artworkURLTemplateData = v8;
  }

  return v5;
}

- (MRRemoteArtwork)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  artworkURLString = [protobufCopy artworkURLString];
  if (artworkURLString)
  {

LABEL_4:
    artworkURLString2 = [protobufCopy artworkURLString];
    artworkURLTemplateData = [protobufCopy artworkURLTemplateData];
    v9 = [(MRRemoteArtwork *)self initWithArtworkURLString:artworkURLString2 templateData:artworkURLTemplateData];

    self = v9;
    selfCopy = self;
    goto LABEL_5;
  }

  selfCopy = [protobufCopy artworkURLTemplateData];

  if (selfCopy)
  {
    goto LABEL_4;
  }

LABEL_5:

  return selfCopy;
}

- (MRRemoteArtwork)initWithProtobufData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRRemoteArtworkProtobuf alloc] initWithData:dataCopy];

    self = [(MRRemoteArtwork *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)protobufData
{
  v3 = objc_alloc_init(_MRRemoteArtworkProtobuf);
  artworkURLString = [(MRRemoteArtwork *)self artworkURLString];
  [(_MRRemoteArtworkProtobuf *)v3 setArtworkURLString:artworkURLString];

  artworkURLTemplateData = [(MRRemoteArtwork *)self artworkURLTemplateData];
  [(_MRRemoteArtworkProtobuf *)v3 setArtworkURLTemplateData:artworkURLTemplateData];

  data = [(_MRRemoteArtworkProtobuf *)v3 data];

  return data;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  artworkURLString = [(MRRemoteArtwork *)self artworkURLString];
  [coderCopy encodeObject:artworkURLString forKey:@"artworkURLString"];

  artworkURLTemplateData = [(MRRemoteArtwork *)self artworkURLTemplateData];
  [coderCopy encodeObject:artworkURLTemplateData forKey:@"artworkURLTemplateData"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  artworkURLString = [(MRRemoteArtwork *)self artworkURLString];
  artworkURLTemplateData = [(MRRemoteArtwork *)self artworkURLTemplateData];
  v7 = [v3 initWithFormat:@"<%@: url=%@, templates=%@", v4, artworkURLString, artworkURLTemplateData];

  return v7;
}

- (void)initWithArtworkURLString:(uint64_t)a1 templateData:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRRemoteArtwork.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"artworkURLString != nil || templateData != nil"}];
}

@end