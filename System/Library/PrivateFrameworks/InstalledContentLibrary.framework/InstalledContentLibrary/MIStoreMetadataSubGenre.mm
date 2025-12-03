@interface MIStoreMetadataSubGenre
- (BOOL)isEqual:(id)equal;
- (MIStoreMetadataSubGenre)initWithCoder:(id)coder;
- (MIStoreMetadataSubGenre)initWithGenre:(id)genre genreID:(id)d;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIStoreMetadataSubGenre

- (MIStoreMetadataSubGenre)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MIStoreMetadataSubGenre *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genreID"];
    genreID = v5->_genreID;
    v5->_genreID = v8;
  }

  return v5;
}

- (MIStoreMetadataSubGenre)initWithGenre:(id)genre genreID:(id)d
{
  genreCopy = genre;
  dCopy = d;
  v8 = [(MIStoreMetadataSubGenre *)self init];
  v9 = v8;
  if (v8)
  {
    [(MIStoreMetadataSubGenre *)v8 setGenre:genreCopy];
    [(MIStoreMetadataSubGenre *)v9 setGenreID:dCopy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  genre = [(MIStoreMetadataSubGenre *)self genre];
  genreID = [(MIStoreMetadataSubGenre *)self genreID];
  v7 = [v4 initWithGenre:genre genreID:genreID];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  genre = [(MIStoreMetadataSubGenre *)self genre];
  [coderCopy encodeObject:genre forKey:@"genre"];

  genreID = [(MIStoreMetadataSubGenre *)self genreID];
  [coderCopy encodeObject:genreID forKey:@"genreID"];
}

- (NSDictionary)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = genre;
  genre = [(MIStoreMetadataSubGenre *)self genre];
  v7[1] = genreID;
  v8[0] = genre;
  genreID = [(MIStoreMetadataSubGenre *)self genreID];
  v8[1] = genreID;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      genre = [(MIStoreMetadataSubGenre *)self genre];
      genre2 = [(MIStoreMetadataSubGenre *)v5 genre];
      if (MICompareObjects(genre, genre2))
      {
        genreID = [(MIStoreMetadataSubGenre *)self genreID];
        genreID2 = [(MIStoreMetadataSubGenre *)v5 genreID];
        v10 = MICompareObjects(genreID, genreID2);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  genre = [(MIStoreMetadataSubGenre *)self genre];
  v4 = [genre hash];
  genreID = [(MIStoreMetadataSubGenre *)self genreID];
  v6 = [genreID hash];

  return v6 ^ v4;
}

@end