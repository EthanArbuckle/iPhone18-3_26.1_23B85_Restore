@interface _MPCProtoRadioContentReference
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _MPCProtoRadioContentReference

- (unint64_t)hash
{
  v3 = [(_MPCProtoRadioContentReferenceLibraryAlbumContentReference *)self->_libraryAlbumContentReference hash];
  v4 = [(_MPCProtoRadioContentReferenceLibraryArtistContentReference *)self->_libraryArtistContentReference hash]^ v3;
  v5 = [(_MPCProtoRadioContentReferenceLibraryItemContentReference *)self->_libraryItemContentReference hash];
  return v4 ^ v5 ^ [(_MPCProtoRadioContentReferenceStoreContentReference *)self->_storeContentReference hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((libraryAlbumContentReference = self->_libraryAlbumContentReference, !(libraryAlbumContentReference | equalCopy[1])) || -[_MPCProtoRadioContentReferenceLibraryAlbumContentReference isEqual:](libraryAlbumContentReference, "isEqual:")) && ((libraryArtistContentReference = self->_libraryArtistContentReference, !(libraryArtistContentReference | equalCopy[2])) || -[_MPCProtoRadioContentReferenceLibraryArtistContentReference isEqual:](libraryArtistContentReference, "isEqual:")) && ((libraryItemContentReference = self->_libraryItemContentReference, !(libraryItemContentReference | equalCopy[3])) || -[_MPCProtoRadioContentReferenceLibraryItemContentReference isEqual:](libraryItemContentReference, "isEqual:")))
  {
    storeContentReference = self->_storeContentReference;
    if (storeContentReference | equalCopy[4])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MPCProtoRadioContentReferenceLibraryAlbumContentReference *)self->_libraryAlbumContentReference copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MPCProtoRadioContentReferenceLibraryArtistContentReference *)self->_libraryArtistContentReference copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(_MPCProtoRadioContentReferenceLibraryItemContentReference *)self->_libraryItemContentReference copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(_MPCProtoRadioContentReferenceStoreContentReference *)self->_storeContentReference copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_libraryAlbumContentReference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_libraryArtistContentReference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_libraryItemContentReference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_storeContentReference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  libraryAlbumContentReference = self->_libraryAlbumContentReference;
  if (libraryAlbumContentReference)
  {
    dictionaryRepresentation = [(_MPCProtoRadioContentReferenceLibraryAlbumContentReference *)libraryAlbumContentReference dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"libraryAlbumContentReference"];
  }

  libraryArtistContentReference = self->_libraryArtistContentReference;
  if (libraryArtistContentReference)
  {
    dictionaryRepresentation2 = [(_MPCProtoRadioContentReferenceLibraryArtistContentReference *)libraryArtistContentReference dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"libraryArtistContentReference"];
  }

  libraryItemContentReference = self->_libraryItemContentReference;
  if (libraryItemContentReference)
  {
    dictionaryRepresentation3 = [(_MPCProtoRadioContentReferenceLibraryItemContentReference *)libraryItemContentReference dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"libraryItemContentReference"];
  }

  storeContentReference = self->_storeContentReference;
  if (storeContentReference)
  {
    dictionaryRepresentation4 = [(_MPCProtoRadioContentReferenceStoreContentReference *)storeContentReference dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"storeContentReference"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoRadioContentReference;
  v4 = [(_MPCProtoRadioContentReference *)&v8 description];
  dictionaryRepresentation = [(_MPCProtoRadioContentReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end