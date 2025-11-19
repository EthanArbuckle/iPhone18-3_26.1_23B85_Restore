@interface MIStoreMetadataSubGenre
- (BOOL)isEqual:(id)a3;
- (MIStoreMetadataSubGenre)initWithCoder:(id)a3;
- (MIStoreMetadataSubGenre)initWithGenre:(id)a3 genreID:(id)a4;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIStoreMetadataSubGenre

- (MIStoreMetadataSubGenre)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStoreMetadataSubGenre *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genreID"];
    genreID = v5->_genreID;
    v5->_genreID = v8;
  }

  return v5;
}

- (MIStoreMetadataSubGenre)initWithGenre:(id)a3 genreID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MIStoreMetadataSubGenre *)self init];
  v9 = v8;
  if (v8)
  {
    [(MIStoreMetadataSubGenre *)v8 setGenre:v6];
    [(MIStoreMetadataSubGenre *)v9 setGenreID:v7];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MIStoreMetadataSubGenre *)self genre];
  v6 = [(MIStoreMetadataSubGenre *)self genreID];
  v7 = [v4 initWithGenre:v5 genreID:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStoreMetadataSubGenre *)self genre];
  [v4 encodeObject:v5 forKey:@"genre"];

  v6 = [(MIStoreMetadataSubGenre *)self genreID];
  [v4 encodeObject:v6 forKey:@"genreID"];
}

- (NSDictionary)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = genre;
  v3 = [(MIStoreMetadataSubGenre *)self genre];
  v7[1] = genreID;
  v8[0] = v3;
  v4 = [(MIStoreMetadataSubGenre *)self genreID];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIStoreMetadataSubGenre *)self genre];
      v7 = [(MIStoreMetadataSubGenre *)v5 genre];
      if (MICompareObjects(v6, v7))
      {
        v8 = [(MIStoreMetadataSubGenre *)self genreID];
        v9 = [(MIStoreMetadataSubGenre *)v5 genreID];
        v10 = MICompareObjects(v8, v9);
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
  v3 = [(MIStoreMetadataSubGenre *)self genre];
  v4 = [v3 hash];
  v5 = [(MIStoreMetadataSubGenre *)self genreID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end