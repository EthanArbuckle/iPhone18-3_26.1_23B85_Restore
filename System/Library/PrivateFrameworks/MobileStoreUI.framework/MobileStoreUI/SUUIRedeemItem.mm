@interface SUUIRedeemItem
- (SUUIRedeemItem)initWithCoder:(id)coder;
- (_NSRange)ageBandRange;
- (id)artworkURLForSize:(int64_t)size;
- (id)largestArtworkURL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUUIRedeemItem

- (_NSRange)ageBandRange
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)artworkURLForSize:(int64_t)size
{
  artworks = [(SUUIRedeemItem *)self artworks];
  v5 = [artworks artworkURLForSize:size];

  return v5;
}

- (id)largestArtworkURL
{
  artworks = [(SUUIRedeemItem *)self artworks];
  largestArtwork = [artworks largestArtwork];
  v4 = [largestArtwork URL];

  return v4;
}

- (SUUIRedeemItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUUIRedeemItem;
  v5 = [(SUUIRedeemItem *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"title"];
    [(SUUIItem *)v5 setTitle:v6];

    -[SUUIItem setItemIdentifier:](v5, "setItemIdentifier:", [coderCopy decodeInt64ForKey:@"itemIdentifier"]);
    v7 = [coderCopy decodeObjectForKey:@"artworks"];
    [(SUUIRedeemItem *)v5 setArtworks:v7];

    -[SUUIItem setItemKind:](v5, "setItemKind:", [coderCopy decodeIntegerForKey:@"itemKind"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(SUUIItem *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeInt64:-[SUUIItem itemIdentifier](self forKey:{"itemIdentifier"), @"itemIdentifier"}];
  artworks = [(SUUIRedeemItem *)self artworks];
  [coderCopy encodeObject:artworks forKey:@"artworks"];

  [coderCopy encodeInteger:-[SUUIItem itemKind](self forKey:{"itemKind"), @"itemKind"}];
}

@end