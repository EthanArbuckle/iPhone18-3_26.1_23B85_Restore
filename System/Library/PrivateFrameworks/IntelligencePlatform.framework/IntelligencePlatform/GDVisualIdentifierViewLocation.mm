@interface GDVisualIdentifierViewLocation
- (id)description;
@end

@implementation GDVisualIdentifierViewLocation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  entityIdentifier = [(GDLocation *)self entityIdentifier];
  names = [(GDLocation *)self names];
  v6 = &stru_1F20A2CD8;
  if (names)
  {
    names2 = [(GDLocation *)self names];
    v7 = [names2 componentsJoinedByString:@"|"];
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  label = [(GDVisualIdentifierViewLocation *)self label];
  v9 = label;
  if (label)
  {
    v6 = label;
  }

  addresses = [(GDLocation *)self addresses];
  v11 = [addresses count];
  addresses2 = [(GDLocation *)self addresses];
  v13 = addresses2;
  if (v11 == 1)
  {
    firstObject = [addresses2 firstObject];
LABEL_10:
    v15 = firstObject;
    v16 = [v3 stringWithFormat:@"<GDVisualIdentifierViewLocation id:%@ n:%@ l:%@ a:%@>", entityIdentifier, v7, v6, firstObject];

    goto LABEL_11;
  }

  if ([addresses2 count])
  {
    firstObject = [(GDLocation *)self addresses];
    goto LABEL_10;
  }

  v16 = [v3 stringWithFormat:@"<GDVisualIdentifierViewLocation id:%@ n:%@ l:%@ a:%@>", entityIdentifier, v7, v6, &stru_1F20A2CD8];
LABEL_11:

  if (names)
  {
  }

  return v16;
}

@end