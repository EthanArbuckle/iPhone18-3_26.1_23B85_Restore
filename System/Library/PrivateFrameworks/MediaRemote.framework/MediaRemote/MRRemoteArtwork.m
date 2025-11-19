@interface MRRemoteArtwork
- (MRRemoteArtwork)initWithArtworkURLString:(id)a3 templateData:(id)a4;
- (MRRemoteArtwork)initWithCoder:(id)a3;
- (MRRemoteArtwork)initWithProtobuf:(id)a3;
- (MRRemoteArtwork)initWithProtobufData:(id)a3;
- (id)description;
- (id)protobufData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRRemoteArtwork

- (MRRemoteArtwork)initWithArtworkURLString:(id)a3 templateData:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!(v7 | v8))
  {
    [MRRemoteArtwork initWithArtworkURLString:a2 templateData:self];
  }

  v15.receiver = self;
  v15.super_class = MRRemoteArtwork;
  v9 = [(MRRemoteArtwork *)&v15 init];
  if (v9)
  {
    v10 = [v7 copy];
    artworkURLString = v9->_artworkURLString;
    v9->_artworkURLString = v10;

    v12 = [v8 copy];
    artworkURLTemplateData = v9->_artworkURLTemplateData;
    v9->_artworkURLTemplateData = v12;
  }

  return v9;
}

- (MRRemoteArtwork)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRRemoteArtwork;
  v5 = [(MRRemoteArtwork *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artworkURLString"];
    artworkURLString = v5->_artworkURLString;
    v5->_artworkURLString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artworkURLTemplateData"];
    artworkURLTemplateData = v5->_artworkURLTemplateData;
    v5->_artworkURLTemplateData = v8;
  }

  return v5;
}

- (MRRemoteArtwork)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [v4 artworkURLString];
  if (v5)
  {

LABEL_4:
    v7 = [v4 artworkURLString];
    v8 = [v4 artworkURLTemplateData];
    v9 = [(MRRemoteArtwork *)self initWithArtworkURLString:v7 templateData:v8];

    self = v9;
    v6 = self;
    goto LABEL_5;
  }

  v6 = [v4 artworkURLTemplateData];

  if (v6)
  {
    goto LABEL_4;
  }

LABEL_5:

  return v6;
}

- (MRRemoteArtwork)initWithProtobufData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRRemoteArtworkProtobuf alloc] initWithData:v4];

    self = [(MRRemoteArtwork *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)protobufData
{
  v3 = objc_alloc_init(_MRRemoteArtworkProtobuf);
  v4 = [(MRRemoteArtwork *)self artworkURLString];
  [(_MRRemoteArtworkProtobuf *)v3 setArtworkURLString:v4];

  v5 = [(MRRemoteArtwork *)self artworkURLTemplateData];
  [(_MRRemoteArtworkProtobuf *)v3 setArtworkURLTemplateData:v5];

  v6 = [(_MRRemoteArtworkProtobuf *)v3 data];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRRemoteArtwork *)self artworkURLString];
  [v4 encodeObject:v5 forKey:@"artworkURLString"];

  v6 = [(MRRemoteArtwork *)self artworkURLTemplateData];
  [v4 encodeObject:v6 forKey:@"artworkURLTemplateData"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRRemoteArtwork *)self artworkURLString];
  v6 = [(MRRemoteArtwork *)self artworkURLTemplateData];
  v7 = [v3 initWithFormat:@"<%@: url=%@, templates=%@", v4, v5, v6];

  return v7;
}

- (void)initWithArtworkURLString:(uint64_t)a1 templateData:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRRemoteArtwork.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"artworkURLString != nil || templateData != nil"}];
}

@end