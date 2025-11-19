@interface CPUINowPlayingSnapshotArtwork
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToArtwork:(id)a3;
- (CPUINowPlayingSnapshotArtwork)initWithArtworkCatalog:(id)a3 bundleIdentifier:(id)a4 artworkImage:(id)a5 snapshot:(id)a6;
- (unint64_t)hash;
@end

@implementation CPUINowPlayingSnapshotArtwork

- (CPUINowPlayingSnapshotArtwork)initWithArtworkCatalog:(id)a3 bundleIdentifier:(id)a4 artworkImage:(id)a5 snapshot:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CPUINowPlayingSnapshotArtwork;
  v15 = [(CPUINowPlayingSnapshotArtwork *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_artworkCatalog, a3);
    v17 = [v12 copy];
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = v17;

    objc_storeStrong(&v16->_artworkImage, a5);
    objc_storeStrong(&v16->_snapshot, a6);
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(MPArtworkCatalog *)self->_artworkCatalog hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  v5 = [(UIImage *)self->_artworkImage hash];
  return v4 ^ v5 ^ [(CPUINowPlayingSnapshot *)self->_snapshot hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPUINowPlayingSnapshotArtwork *)self isEqualToArtwork:v4];

  return v5;
}

- (BOOL)isEqualToArtwork:(id)a3
{
  v4 = a3;
  v5 = [(CPUINowPlayingSnapshotArtwork *)self artworkCatalog];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 artworkCatalog];

    if (v7)
    {
      v8 = [(CPUINowPlayingSnapshotArtwork *)self artworkCatalog];
      v9 = [v4 artworkCatalog];
      v10 = [v8 isEqual:v9];
LABEL_7:

      goto LABEL_8;
    }
  }

  v8 = [(CPUINowPlayingSnapshotArtwork *)self artworkCatalog];
  if (!v8)
  {
    v9 = [v4 artworkCatalog];
    v10 = v9 == 0;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  v11 = [(CPUINowPlayingSnapshotArtwork *)self bundleIdentifier];
  if (v11 && (v12 = v11, [v4 bundleIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    if (v10)
    {
      v14 = [(CPUINowPlayingSnapshotArtwork *)self bundleIdentifier];
      v15 = [v4 bundleIdentifier];
      v16 = [v14 isEqualToString:v15];
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    v14 = [(CPUINowPlayingSnapshotArtwork *)self bundleIdentifier];
    if (v14)
    {
      v16 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v15 = [v4 bundleIdentifier];
    v16 = v15 == 0;
LABEL_17:

    goto LABEL_18;
  }

  v16 = 0;
LABEL_19:
  v17 = [(CPUINowPlayingSnapshotArtwork *)self artworkImage];
  if (v17 && (v18 = v17, [v4 artworkImage], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
  {
    if (v16)
    {
      v20 = [(CPUINowPlayingSnapshotArtwork *)self artworkImage];
      v21 = [v4 artworkImage];
      v16 = [v20 isEqual:v21];
      goto LABEL_27;
    }
  }

  else if (v16)
  {
    v20 = [(CPUINowPlayingSnapshotArtwork *)self artworkImage];
    if (v20)
    {
      v16 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v21 = [v4 artworkImage];
    v16 = v21 == 0;
LABEL_27:

    goto LABEL_28;
  }

LABEL_29:
  v22 = [(CPUINowPlayingSnapshotArtwork *)self snapshot];
  if (v22 && (v23 = v22, [v4 snapshot], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v24))
  {
    if (v16)
    {
      v25 = [(CPUINowPlayingSnapshotArtwork *)self snapshot];
      v26 = [v4 snapshot];
      LOBYTE(v16) = [v25 isEqual:v26];
      goto LABEL_37;
    }
  }

  else if (v16)
  {
    v25 = [(CPUINowPlayingSnapshotArtwork *)self snapshot];
    if (v25)
    {
      LOBYTE(v16) = 0;
LABEL_38:

      goto LABEL_39;
    }

    v26 = [v4 snapshot];
    LOBYTE(v16) = v26 == 0;
LABEL_37:

    goto LABEL_38;
  }

LABEL_39:

  return v16;
}

@end