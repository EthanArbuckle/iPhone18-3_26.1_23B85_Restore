@interface GDVisualIdentifierViewLocation
- (id)description;
@end

@implementation GDVisualIdentifierViewLocation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GDLocation *)self entityIdentifier];
  v5 = [(GDLocation *)self names];
  v6 = &stru_1F20A2CD8;
  if (v5)
  {
    v18 = [(GDLocation *)self names];
    v7 = [v18 componentsJoinedByString:@"|"];
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  v8 = [(GDVisualIdentifierViewLocation *)self label];
  v9 = v8;
  if (v8)
  {
    v6 = v8;
  }

  v10 = [(GDLocation *)self addresses];
  v11 = [v10 count];
  v12 = [(GDLocation *)self addresses];
  v13 = v12;
  if (v11 == 1)
  {
    v14 = [v12 firstObject];
LABEL_10:
    v15 = v14;
    v16 = [v3 stringWithFormat:@"<GDVisualIdentifierViewLocation id:%@ n:%@ l:%@ a:%@>", v4, v7, v6, v14];

    goto LABEL_11;
  }

  if ([v12 count])
  {
    v14 = [(GDLocation *)self addresses];
    goto LABEL_10;
  }

  v16 = [v3 stringWithFormat:@"<GDVisualIdentifierViewLocation id:%@ n:%@ l:%@ a:%@>", v4, v7, v6, &stru_1F20A2CD8];
LABEL_11:

  if (v5)
  {
  }

  return v16;
}

@end