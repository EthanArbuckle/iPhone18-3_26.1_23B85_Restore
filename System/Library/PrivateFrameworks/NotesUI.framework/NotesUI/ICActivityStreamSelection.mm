@interface ICActivityStreamSelection
+ (id)objc_selectionFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (ICActivityStreamSelection)initWithItemIDs:(id)ds filter:(id)filter displayDate:(id)date;
- (ICActivityStreamSelection)initWithMentions:(id)mentions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)objc_encodedData;
- (id)objc_initWithMentions:(id)mentions;
- (unint64_t)hash;
@end

@implementation ICActivityStreamSelection

- (ICActivityStreamSelection)initWithItemIDs:(id)ds filter:(id)filter displayDate:(id)date
{
  dsCopy = ds;
  filterCopy = filter;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = ICActivityStreamSelection;
  v12 = [(ICActivityStreamSelection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemIDs, ds);
    objc_storeStrong(&v13->_filter, filter);
    objc_storeStrong(&v13->_displayDate, date);
  }

  return v13;
}

- (ICActivityStreamSelection)initWithMentions:(id)mentions
{
  v4 = [(ICActivityStreamSelection *)self objc_initWithMentions:mentions];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  itemIDs = [(ICActivityStreamSelection *)self itemIDs];
  filter = [(ICActivityStreamSelection *)self filter];
  displayDate = [(ICActivityStreamSelection *)self displayDate];
  v9 = [v3 stringWithFormat:@"<%@: %p, itemIDs: %@, filter: %@, displayDate: %@>", v5, self, itemIDs, filter, displayDate];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    itemIDs = [(ICActivityStreamSelection *)self itemIDs];
    itemIDs2 = [v5 itemIDs];
    v8 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == itemIDs)
    {
      v9 = 0;
    }

    else
    {
      v9 = itemIDs;
    }

    filter = v9;
    if (v8 == itemIDs2)
    {
      v11 = 0;
    }

    else
    {
      v11 = itemIDs2;
    }

    v12 = v11;
    if (filter | v12)
    {
      filter2 = v12;
      if (filter)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_17;
      }

      v15 = [filter isEqual:v12];

      if (!v15)
      {
        v18 = 0;
        goto LABEL_19;
      }
    }

    filter = [v5 filter];
    filter2 = [(ICActivityStreamSelection *)self filter];
    if ([filter isEqual:filter2])
    {
      displayDate = [v5 displayDate];
      displayDate2 = [(ICActivityStreamSelection *)self displayDate];
      v18 = [displayDate isEqual:displayDate2];

LABEL_18:
LABEL_19:

      return v18;
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  return 1;
}

- (unint64_t)hash
{
  v29 = *MEMORY[0x1E69E9840];
  itemIDs = [(ICActivityStreamSelection *)self itemIDs];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = itemIDs;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6 += ICHashWithObject(*(*(&v24 + 1) + 8 * i));
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  filter = [(ICActivityStreamSelection *)self filter];
  v13 = [filter hash];
  displayDate = [(ICActivityStreamSelection *)self displayDate];
  [displayDate hash];
  v22 = ICHashWithHashKeys(v6, v15, v16, v17, v18, v19, v20, v21, v13);

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICActivityStreamSelection allocWithZone:zone];
  itemIDs = [(ICActivityStreamSelection *)self itemIDs];
  filter = [(ICActivityStreamSelection *)self filter];
  displayDate = [(ICActivityStreamSelection *)self displayDate];
  v8 = [(ICActivityStreamSelection *)v4 initWithItemIDs:itemIDs filter:filter displayDate:displayDate];

  return v8;
}

- (id)objc_initWithMentions:(id)mentions
{
  sub_1D41766C0(0, &qword_1EC7CB660);
  v3 = sub_1D4419E44();
  return ICActivityStreamSelection.init(mentions:)(v3);
}

+ (id)objc_selectionFromData:(id)data
{
  dataCopy = data;
  v4 = sub_1D4417264();
  v6 = v5;

  v7 = _sSo25ICActivityStreamSelectionC7NotesUIE4from4dataABSg10Foundation4DataV_tFZ_0();
  sub_1D4342814(v4, v6);

  return v7;
}

- (id)objc_encodedData
{
  v3 = type metadata accessor for ICActivityStreamSelection.Model();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D4416DA4();
  swift_allocObject();
  selfCopy = self;
  sub_1D4416D94();
  v7 = selfCopy;
  itemIDs = [(ICActivityStreamSelection *)v7 itemIDs];
  if (itemIDs)
  {
    v9 = itemIDs;
    v10 = sub_1D441A064();
  }

  else
  {
    v10 = 0;
  }

  *v5 = v10;
  filter = [(ICActivityStreamSelection *)v7 filter];
  sub_1D441A354();
  displayDate = [(ICActivityStreamSelection *)v7 displayDate];
  sub_1D44173F4();

  sub_1D43EC5F0(&qword_1EC7CC428, type metadata accessor for ICActivityStreamSelection.Model);
  v13 = sub_1D4416D84();
  v15 = v14;

  sub_1D43EC69C(v5);
  v16 = sub_1D4417254();
  sub_1D4342814(v13, v15);

  return v16;
}

@end