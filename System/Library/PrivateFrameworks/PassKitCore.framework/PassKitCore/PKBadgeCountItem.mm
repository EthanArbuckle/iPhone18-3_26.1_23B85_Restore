@interface PKBadgeCountItem
- (BOOL)isEqual:(id)equal;
- (PKBadgeCountItem)initWithCoder:(id)coder;
- (PKBadgeCountItem)initWithItemType:(unint64_t)type subtitle:(id)subtitle count:(int64_t)count;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKBadgeCountItem

- (PKBadgeCountItem)initWithItemType:(unint64_t)type subtitle:(id)subtitle count:(int64_t)count
{
  subtitleCopy = subtitle;
  v16.receiver = self;
  v16.super_class = PKBadgeCountItem;
  v9 = [(PKBadgeCountItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_itemType = type;
    if (type > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E79D4770[type];
    }

    title = v9->_title;
    v9->_title = &v11->isa;

    v13 = [subtitleCopy copy];
    subtitle = v10->_subtitle;
    v10->_subtitle = v13;

    v10->_count = count;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        itemType = self->_itemType;
        if (itemType == [(PKBadgeCountItem *)v5 itemType])
        {
          title = self->_title;
          title = [(PKBadgeCountItem *)v5 title];
          v9 = title;
          v10 = title;
          v11 = v10;
          if (v9 == v10)
          {
          }

          else
          {
            if (!v9 || !v10)
            {

              goto LABEL_22;
            }

            v12 = [(NSString *)v9 isEqualToString:v10];

            if (!v12)
            {
              v13 = 0;
LABEL_24:

              goto LABEL_25;
            }
          }

          subtitle = self->_subtitle;
          subtitle = [(PKBadgeCountItem *)v5 subtitle];
          v16 = subtitle;
          v17 = subtitle;
          v9 = v17;
          if (v16 == v17)
          {

            goto LABEL_20;
          }

          if (v16 && v17)
          {
            v18 = [(NSString *)v16 isEqualToString:v17];

            if (!v18)
            {
              goto LABEL_22;
            }

LABEL_20:
            count = self->_count;
            v13 = count == [(PKBadgeCountItem *)v5 count];
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:
          v13 = 0;
          goto LABEL_23;
        }
      }
    }

    v13 = 0;
  }

LABEL_25:

  return v13;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PKBadgeCountItem;
  v3 = [(PKBadgeCountItem *)&v8 description];
  v4 = [v3 stringByAppendingFormat:@" title: %@", self->_title];

  if (self->_subtitle)
  {
    v5 = [v4 stringByAppendingFormat:@", subtitle: %@", self->_subtitle];

    v4 = v5;
  }

  v6 = [v4 stringByAppendingFormat:@", count: %ld", self->_count];

  return v6;
}

- (PKBadgeCountItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKBadgeCountItem;
  v5 = [(PKBadgeCountItem *)&v11 init];
  if (v5)
  {
    v5->_itemType = [coderCopy decodeIntegerForKey:@"itemType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  itemType = self->_itemType;
  coderCopy = coder;
  [coderCopy encodeInteger:itemType forKey:@"itemType"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
}

@end