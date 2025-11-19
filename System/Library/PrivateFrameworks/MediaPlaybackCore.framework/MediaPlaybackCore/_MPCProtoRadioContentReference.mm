@interface _MPCProtoRadioContentReference
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _MPCProtoRadioContentReference

- (unint64_t)hash
{
  v3 = [(_MPCProtoRadioContentReferenceLibraryAlbumContentReference *)self->_libraryAlbumContentReference hash];
  v4 = [(_MPCProtoRadioContentReferenceLibraryArtistContentReference *)self->_libraryArtistContentReference hash]^ v3;
  v5 = [(_MPCProtoRadioContentReferenceLibraryItemContentReference *)self->_libraryItemContentReference hash];
  return v4 ^ v5 ^ [(_MPCProtoRadioContentReferenceStoreContentReference *)self->_storeContentReference hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((libraryAlbumContentReference = self->_libraryAlbumContentReference, !(libraryAlbumContentReference | v4[1])) || -[_MPCProtoRadioContentReferenceLibraryAlbumContentReference isEqual:](libraryAlbumContentReference, "isEqual:")) && ((libraryArtistContentReference = self->_libraryArtistContentReference, !(libraryArtistContentReference | v4[2])) || -[_MPCProtoRadioContentReferenceLibraryArtistContentReference isEqual:](libraryArtistContentReference, "isEqual:")) && ((libraryItemContentReference = self->_libraryItemContentReference, !(libraryItemContentReference | v4[3])) || -[_MPCProtoRadioContentReferenceLibraryItemContentReference isEqual:](libraryItemContentReference, "isEqual:")))
  {
    storeContentReference = self->_storeContentReference;
    if (storeContentReference | v4[4])
    {
      v9 = [(_MPCProtoRadioContentReferenceStoreContentReference *)storeContentReference isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MPCProtoRadioContentReferenceLibraryAlbumContentReference *)self->_libraryAlbumContentReference copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MPCProtoRadioContentReferenceLibraryArtistContentReference *)self->_libraryArtistContentReference copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(_MPCProtoRadioContentReferenceLibraryItemContentReference *)self->_libraryItemContentReference copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(_MPCProtoRadioContentReferenceStoreContentReference *)self->_storeContentReference copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_libraryAlbumContentReference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_libraryArtistContentReference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_libraryItemContentReference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_storeContentReference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  libraryAlbumContentReference = self->_libraryAlbumContentReference;
  if (libraryAlbumContentReference)
  {
    v5 = [(_MPCProtoRadioContentReferenceLibraryAlbumContentReference *)libraryAlbumContentReference dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"libraryAlbumContentReference"];
  }

  libraryArtistContentReference = self->_libraryArtistContentReference;
  if (libraryArtistContentReference)
  {
    v7 = [(_MPCProtoRadioContentReferenceLibraryArtistContentReference *)libraryArtistContentReference dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"libraryArtistContentReference"];
  }

  libraryItemContentReference = self->_libraryItemContentReference;
  if (libraryItemContentReference)
  {
    v9 = [(_MPCProtoRadioContentReferenceLibraryItemContentReference *)libraryItemContentReference dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"libraryItemContentReference"];
  }

  storeContentReference = self->_storeContentReference;
  if (storeContentReference)
  {
    v11 = [(_MPCProtoRadioContentReferenceStoreContentReference *)storeContentReference dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"storeContentReference"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoRadioContentReference;
  v4 = [(_MPCProtoRadioContentReference *)&v8 description];
  v5 = [(_MPCProtoRadioContentReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end