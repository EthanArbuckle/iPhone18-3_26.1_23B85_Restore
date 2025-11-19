@interface PKPassAuxiliaryPassInformationItem
- (BOOL)_isEqualToItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPassAuxiliaryPassInformationItem)initWithCoder:(id)a3;
- (PKPassAuxiliaryPassInformationItem)initWithItemInformation:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6;
- (id)_displayableStringForDate:(id)a3 fromField:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setMerchant:(id)a3;
@end

@implementation PKPassAuxiliaryPassInformationItem

- (PKPassAuxiliaryPassInformationItem)initWithItemInformation:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6
{
  v106 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v102.receiver = self;
  v102.super_class = PKPassAuxiliaryPassInformationItem;
  v13 = [(PKPassAuxiliaryPassInformationItem *)&v102 init];
  if (v13)
  {
    v14 = [v10 PKStringForKey:@"identifier"];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v10 PKStringForKey:@"title"];
    v17 = PKLocalizedPassStringForPassBundle(v16, v11, v12);
    title = v13->_title;
    v13->_title = v17;

    v19 = [v10 PKStringForKey:@"subtitle"];
    v20 = PKLocalizedPassStringForPassBundle(v19, v11, v12);
    subtitle = v13->_subtitle;
    v13->_subtitle = v20;

    v22 = [v10 PKStringForKey:@"subtitle2"];
    v23 = PKLocalizedPassStringForPassBundle(v22, v11, v12);
    subtitle2 = v13->_subtitle2;
    v13->_subtitle2 = v23;

    v25 = [v10 PKURLForKey:@"mapsURL"];
    mapsURL = v13->_mapsURL;
    v13->_mapsURL = v25;

    v27 = [v10 PKStringForKey:@"locationCategory"];
    v28 = v27;
    if (v27)
    {
      v13->_merchantCategory = PKMerchantCategoryFromString(v27);
    }

    v84 = v28;
    v88 = v13;
    v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v85 = v10;
    v30 = [v10 objectForKey:@"fields"];
    v31 = [v30 countByEnumeratingWithState:&v98 objects:v105 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v99;
      do
      {
        v34 = 0;
        do
        {
          if (*v99 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = _FieldForTypeWithDictionaryAndBundle(3, *(*(&v98 + 1) + 8 * v34), v11, v12, 0, 0, a6);
          [v89 safelyAddObject:v35];
          v36 = [v35 key];
          [v29 pk_safelyAddObject:v36];

          ++v34;
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v98 objects:v105 count:16];
      }

      while (v32);
    }

    v37 = [v29 copy];
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v39 = [v85 objectForKey:@"sections"];
    v40 = [v39 countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v95;
      do
      {
        v43 = 0;
        do
        {
          if (*v95 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [[PKPassDetailSection alloc] initWithDictionary:*(*(&v94 + 1) + 8 * v43) allowedRows:v37 bundle:v11 privateBundle:v12];
          [v38 safelyAddObject:v44];

          ++v43;
        }

        while (v41 != v43);
        v41 = [v39 countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v41);
    }

    v10 = v85;
    v45 = [v85 objectForKey:@"footerConfiguration"];
    v46 = [v45 PKStringForKey:@"leadingTitle"];
    v47 = PKLocalizedPassStringForPassBundle(v46, v11, v12);
    v13 = v88;
    detailFooterLeadingTitle = v88->_detailFooterLeadingTitle;
    v88->_detailFooterLeadingTitle = v47;

    v49 = [v45 PKStringForKey:@"leadingDetailText"];
    v50 = PKLocalizedPassStringForPassBundle(v49, v11, v12);
    detailFooterLeadingText = v88->_detailFooterLeadingText;
    v88->_detailFooterLeadingText = v50;

    v52 = [v45 PKStringForKey:@"trailingTitle"];
    v53 = PKLocalizedPassStringForPassBundle(v52, v11, v12);
    detailFooterTrailingTitle = v88->_detailFooterTrailingTitle;
    v88->_detailFooterTrailingTitle = v53;

    v55 = [v45 PKStringForKey:@"trailingDetailText"];
    v56 = PKLocalizedPassStringForPassBundle(v55, v11, v12);
    detailFooterTrailingText = v88->_detailFooterTrailingText;
    v88->_detailFooterTrailingText = v56;

    if (!v88->_subtitle)
    {
      v83 = v45;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v58 = v89;
      v59 = [v58 countByEnumeratingWithState:&v90 objects:v103 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v91;
        do
        {
          v62 = 0;
          do
          {
            if (*v91 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v90 + 1) + 8 * v62);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v64 = [v63 value];
              v65 = v13->_subtitle;
              v13->_subtitle = v64;

              if (!v13->_detailFooterLeadingText)
              {
                if (v13->_detailFooterTrailingText)
                {
                  goto LABEL_42;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v68 = v63;
                  v86 = [v68 startDate];
                  v69 = [(PKPassAuxiliaryPassInformationItem *)v88 _displayableStringForDate:v86 fromField:v68];
                  v70 = v88->_detailFooterLeadingText;
                  v88->_detailFooterLeadingText = v69;

                  v87 = [v68 endDate];
                  v71 = [(PKPassAuxiliaryPassInformationItem *)v88 _displayableStringForDate:v87 fromField:v68];
                  v72 = v88->_detailFooterTrailingText;
                  v88->_detailFooterTrailingText = v71;

                  v13 = v88;
                }

                if (!v13->_detailFooterLeadingText)
                {
LABEL_42:
                  if (!v13->_detailFooterTrailingTitle)
                  {
                    v66 = [v63 value];
                    v67 = v13->_detailFooterLeadingText;
                    v13->_detailFooterLeadingText = v66;
                  }
                }
              }
            }

            ++v62;
          }

          while (v60 != v62);
          v60 = [v58 countByEnumeratingWithState:&v90 objects:v103 count:16];
        }

        while (v60);
      }

      v45 = v83;
      v10 = v85;
    }

    if (!v13->_subtitle2)
    {
      merchant = v13->_merchant;
      if (merchant)
      {
        v74 = [(PKMerchant *)merchant mapsMerchant];
        v75 = [v74 postalAddress];
        v76 = PKMerchantFormattedLocationForPostalAddress(v75);
        v77 = v13->_subtitle2;
        v13->_subtitle2 = v76;
      }
    }

    v78 = [v89 copy];
    fields = v13->_fields;
    v13->_fields = v78;

    v80 = [v38 copy];
    sections = v13->_sections;
    v13->_sections = v80;
  }

  return v13;
}

- (void)setMerchant:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_merchant, a3);
  if (!self->_subtitle2)
  {
    merchant = self->_merchant;
    if (merchant)
    {
      v6 = [(PKMerchant *)merchant mapsMerchant];
      v7 = [v6 postalAddress];
      v8 = PKMerchantFormattedLocationForPostalAddress(v7);
      subtitle2 = self->_subtitle2;
      self->_subtitle2 = v8;
    }
  }
}

- (id)_displayableStringForDate:(id)a3 fromField:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDoesRelativeDateFormatting:{objc_msgSend(v6, "isRelative")}];
  if ([v6 ignoresTimeZone])
  {
    v8 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  }

  else
  {
    v8 = 0;
  }

  [v7 setTimeZone:v8];
  if ([v6 dateStyle] || objc_msgSend(v6, "timeStyle"))
  {
    [v7 setDateStyle:{objc_msgSend(v6, "dateStyle")}];
    [v7 setTimeStyle:{objc_msgSend(v6, "timeStyle")}];
  }

  else
  {
    v11 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    [v11 setTimeZone:v8];
    v12 = [MEMORY[0x1E695DF00] date];
    if ([v11 isDate:v5 equalToDate:v12 toUnitGranularity:4])
    {
      [v7 setLocalizedDateFormatFromTemplate:@"M d"];
      [v7 setFormattingContext:2];
    }

    else
    {
      [v7 setDateStyle:1];
      [v7 setTimeStyle:0];
    }
  }

  v9 = [v7 stringFromDate:v5];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_title hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_subtitle hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_subtitle2 hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_detailFooterLeadingTitle hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_detailFooterLeadingText hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_detailFooterTrailingTitle hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_detailFooterTrailingText hash]- v9 + 32 * v9;
  v11 = [(NSURL *)self->_mapsURL hash];
  return self->_merchantCategory - (v11 - v10 + 32 * v10) + 32 * (v11 - v10 + 32 * v10) + 0x31809BE32FDED1;
}

- (PKPassAuxiliaryPassInformationItem)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PKPassAuxiliaryPassInformationItem;
  v5 = [(PKPassAuxiliaryPassInformationItem *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle2"];
    subtitle2 = v5->_subtitle2;
    v5->_subtitle2 = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leadingTitle"];
    detailFooterLeadingTitle = v5->_detailFooterLeadingTitle;
    v5->_detailFooterLeadingTitle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leadingDetailText"];
    detailFooterLeadingText = v5->_detailFooterLeadingText;
    v5->_detailFooterLeadingText = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trailingTitle"];
    detailFooterTrailingTitle = v5->_detailFooterTrailingTitle;
    v5->_detailFooterTrailingTitle = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trailingDetailText"];
    detailFooterTrailingText = v5->_detailFooterTrailingText;
    v5->_detailFooterTrailingText = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapsURL"];
    mapsURL = v5->_mapsURL;
    v5->_mapsURL = v22;

    v5->_merchantCategory = [v4 decodeIntegerForKey:@"locationCategory"];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"fields"];
    fields = v5->_fields;
    v5->_fields = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeObject:self->_subtitle2 forKey:@"subtitle2"];
  [v5 encodeObject:self->_detailFooterLeadingTitle forKey:@"leadingTitle"];
  [v5 encodeObject:self->_detailFooterLeadingText forKey:@"leadingDetailText"];
  [v5 encodeObject:self->_detailFooterTrailingTitle forKey:@"trailingTitle"];
  [v5 encodeObject:self->_detailFooterTrailingText forKey:@"trailingDetailText"];
  [v5 encodeObject:self->_mapsURL forKey:@"mapsURL"];
  [v5 encodeInteger:self->_merchantCategory forKey:@"locationCategory"];
  [v5 encodeObject:self->_sections forKey:@"sections"];
  [v5 encodeObject:self->_fields forKey:@"fields"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPassAuxiliaryPassInformationItem allocWithZone:](PKPassAuxiliaryPassInformationItem init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  title = v5->_title;
  v5->_title = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:a3];
  subtitle = v5->_subtitle;
  v5->_subtitle = v10;

  v12 = [(NSString *)self->_subtitle2 copyWithZone:a3];
  subtitle2 = v5->_subtitle2;
  v5->_subtitle2 = v12;

  v14 = [(NSString *)self->_detailFooterLeadingTitle copyWithZone:a3];
  detailFooterLeadingTitle = v5->_detailFooterLeadingTitle;
  v5->_detailFooterLeadingTitle = v14;

  v16 = [(NSString *)self->_detailFooterLeadingText copyWithZone:a3];
  detailFooterLeadingText = v5->_detailFooterLeadingText;
  v5->_detailFooterLeadingText = v16;

  v18 = [(NSString *)self->_detailFooterTrailingTitle copyWithZone:a3];
  detailFooterTrailingTitle = v5->_detailFooterTrailingTitle;
  v5->_detailFooterTrailingTitle = v18;

  v20 = [(NSString *)self->_detailFooterTrailingText copyWithZone:a3];
  detailFooterTrailingText = v5->_detailFooterTrailingText;
  v5->_detailFooterTrailingText = v20;

  v22 = [(NSURL *)self->_mapsURL copyWithZone:a3];
  mapsURL = v5->_mapsURL;
  v5->_mapsURL = v22;

  v5->_merchantCategory = self->_merchantCategory;
  v24 = [(NSArray *)self->_sections copyWithZone:a3];
  sections = v5->_sections;
  v5->_sections = v24;

  v26 = [(NSArray *)self->_fields copyWithZone:a3];
  fields = v5->_fields;
  v5->_fields = v26;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"_subtitle: '%@'; ", self->_subtitle];
  [v3 appendFormat:@"_subtitle2: '%@'; ", self->_subtitle2];
  [v3 appendFormat:@"_mapsURL: '%@'; ", self->_mapsURL];
  [v3 appendFormat:@"_merchantCategory: '%ld'; ", self->_merchantCategory];
  [v3 appendFormat:@"_sections: '%@'; ", self->_sections];
  [v3 appendFormat:@"_fields: '%@'; ", self->_fields];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassAuxiliaryPassInformationItem *)self _isEqualToItem:v5];
  }

  return v6;
}

- (BOOL)_isEqualToItem:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_29;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_29;
  }

  title = self->_title;
  v9 = v4[2];
  if (title && v9)
  {
    if (([(NSString *)title isEqual:?]& 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (title != v9)
  {
    goto LABEL_29;
  }

  subtitle = self->_subtitle;
  v11 = v4[3];
  if (subtitle && v11)
  {
    if (([(NSString *)subtitle isEqual:?]& 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (subtitle != v11)
  {
    goto LABEL_29;
  }

  subtitle2 = self->_subtitle2;
  v13 = v4[4];
  if (subtitle2 && v13)
  {
    if (([(NSString *)subtitle2 isEqual:?]& 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (subtitle2 != v13)
  {
    goto LABEL_29;
  }

  mapsURL = self->_mapsURL;
  v15 = v4[9];
  if (!mapsURL || !v15)
  {
    if (mapsURL == v15)
    {
      goto LABEL_27;
    }

LABEL_29:
    v16 = 0;
    goto LABEL_30;
  }

  if (([(NSURL *)mapsURL isEqual:?]& 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  v16 = self->_merchantCategory == v4[11];
LABEL_30:

  return v16;
}

@end