@interface CPUINowPlayingSnapshotArtwork
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToArtwork:(id)artwork;
- (CPUINowPlayingSnapshotArtwork)initWithArtworkCatalog:(id)catalog bundleIdentifier:(id)identifier artworkImage:(id)image snapshot:(id)snapshot;
- (unint64_t)hash;
@end

@implementation CPUINowPlayingSnapshotArtwork

- (CPUINowPlayingSnapshotArtwork)initWithArtworkCatalog:(id)catalog bundleIdentifier:(id)identifier artworkImage:(id)image snapshot:(id)snapshot
{
  catalogCopy = catalog;
  identifierCopy = identifier;
  imageCopy = image;
  snapshotCopy = snapshot;
  v20.receiver = self;
  v20.super_class = CPUINowPlayingSnapshotArtwork;
  v15 = [(CPUINowPlayingSnapshotArtwork *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_artworkCatalog, catalog);
    v17 = [identifierCopy copy];
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = v17;

    objc_storeStrong(&v16->_artworkImage, image);
    objc_storeStrong(&v16->_snapshot, snapshot);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPUINowPlayingSnapshotArtwork *)self isEqualToArtwork:equalCopy];

  return v5;
}

- (BOOL)isEqualToArtwork:(id)artwork
{
  artworkCopy = artwork;
  artworkCatalog = [(CPUINowPlayingSnapshotArtwork *)self artworkCatalog];
  if (artworkCatalog)
  {
    v6 = artworkCatalog;
    artworkCatalog2 = [artworkCopy artworkCatalog];

    if (artworkCatalog2)
    {
      artworkCatalog3 = [(CPUINowPlayingSnapshotArtwork *)self artworkCatalog];
      artworkCatalog4 = [artworkCopy artworkCatalog];
      v10 = [artworkCatalog3 isEqual:artworkCatalog4];
LABEL_7:

      goto LABEL_8;
    }
  }

  artworkCatalog3 = [(CPUINowPlayingSnapshotArtwork *)self artworkCatalog];
  if (!artworkCatalog3)
  {
    artworkCatalog4 = [artworkCopy artworkCatalog];
    v10 = artworkCatalog4 == 0;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  bundleIdentifier = [(CPUINowPlayingSnapshotArtwork *)self bundleIdentifier];
  if (bundleIdentifier && (v12 = bundleIdentifier, [artworkCopy bundleIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    if (v10)
    {
      bundleIdentifier2 = [(CPUINowPlayingSnapshotArtwork *)self bundleIdentifier];
      bundleIdentifier3 = [artworkCopy bundleIdentifier];
      v16 = [bundleIdentifier2 isEqualToString:bundleIdentifier3];
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    bundleIdentifier2 = [(CPUINowPlayingSnapshotArtwork *)self bundleIdentifier];
    if (bundleIdentifier2)
    {
      v16 = 0;
LABEL_18:

      goto LABEL_19;
    }

    bundleIdentifier3 = [artworkCopy bundleIdentifier];
    v16 = bundleIdentifier3 == 0;
LABEL_17:

    goto LABEL_18;
  }

  v16 = 0;
LABEL_19:
  artworkImage = [(CPUINowPlayingSnapshotArtwork *)self artworkImage];
  if (artworkImage && (v18 = artworkImage, [artworkCopy artworkImage], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
  {
    if (v16)
    {
      artworkImage2 = [(CPUINowPlayingSnapshotArtwork *)self artworkImage];
      artworkImage3 = [artworkCopy artworkImage];
      v16 = [artworkImage2 isEqual:artworkImage3];
      goto LABEL_27;
    }
  }

  else if (v16)
  {
    artworkImage2 = [(CPUINowPlayingSnapshotArtwork *)self artworkImage];
    if (artworkImage2)
    {
      v16 = 0;
LABEL_28:

      goto LABEL_29;
    }

    artworkImage3 = [artworkCopy artworkImage];
    v16 = artworkImage3 == 0;
LABEL_27:

    goto LABEL_28;
  }

LABEL_29:
  snapshot = [(CPUINowPlayingSnapshotArtwork *)self snapshot];
  if (snapshot && (v23 = snapshot, [artworkCopy snapshot], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v24))
  {
    if (v16)
    {
      snapshot2 = [(CPUINowPlayingSnapshotArtwork *)self snapshot];
      snapshot3 = [artworkCopy snapshot];
      LOBYTE(v16) = [snapshot2 isEqual:snapshot3];
      goto LABEL_37;
    }
  }

  else if (v16)
  {
    snapshot2 = [(CPUINowPlayingSnapshotArtwork *)self snapshot];
    if (snapshot2)
    {
      LOBYTE(v16) = 0;
LABEL_38:

      goto LABEL_39;
    }

    snapshot3 = [artworkCopy snapshot];
    LOBYTE(v16) = snapshot3 == 0;
LABEL_37:

    goto LABEL_38;
  }

LABEL_39:

  return v16;
}

@end