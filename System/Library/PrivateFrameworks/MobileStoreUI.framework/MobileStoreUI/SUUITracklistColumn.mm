@interface SUUITracklistColumn
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setPreferredWidthForAttributedStrings:(id)strings;
@end

@implementation SUUITracklistColumn

- (void)setPreferredWidthForAttributedStrings:(id)strings
{
  v20 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [stringsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(stringsCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v8)
        {
          v12 = [*(*(&v15 + 1) + 8 * i) length];
          if (v12 > [v8 length])
          {
            v13 = v11;

            v8 = v13;
          }
        }

        else
        {
          v8 = v11;
        }
      }

      v7 = [stringsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
    if (v8)
    {
      [v8 size];
      v6 = v14;
    }
  }

  else
  {
    v8 = 0;
  }

  [(SUUITracklistColumn *)self setPreferredWidth:ceilf(v6)];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUITracklistColumn;
  v4 = [(SUUITracklistColumn *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [ID: %ld, Width: %.2f]", v4, self->_columnIdentifier, *&self->_width];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setColumnIdentifier:self->_columnIdentifier];
  [v4 setContentAlignment:self->_contentAlignment];
  [v4 setHeaderAlignment:self->_headerAlignment];
  [v4 setMaximumWidthFraction:self->_maximumWidthFraction];
  [v4 setPreferredWidth:self->_preferredWidth];
  [v4 setShowsPreviewControl:self->_showsPreviewControl];
  [v4 setSizesToFit:self->_sizesToFit];
  [v4 setWidth:self->_width];
  return v4;
}

@end