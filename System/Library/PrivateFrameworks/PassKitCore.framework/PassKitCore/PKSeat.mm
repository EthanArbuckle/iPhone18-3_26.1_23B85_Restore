@interface PKSeat
+ (id)createFromDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSeat:(id)seat;
- (PKSeat)initWithCoder:(id)coder;
- (id)_initFromDictionary:(id)dictionary;
- (id)airlineSeat;
- (id)localizedDescription;
- (unint64_t)diffFromSeat:(id)seat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSeat

- (id)airlineSeat
{
  if ([(PKSeat *)self containsAttributes:2]&& [(PKSeat *)self containsAttributes:1])
  {
    v3 = [(PKSeat *)self row];
    designation = [(PKSeat *)self designation];
    if ([v3 length] && objc_msgSend(designation, "length"))
    {
      v5 = PKLocalizedTicketingString(&cfstr_LocalizedRowAn.isa, &stru_1F22903C8.isa, v3, designation);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)createFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[PKSeat alloc] _initFromDictionary:dictionaryCopy];

  return v4;
}

- (id)_initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = PKSeat;
  v5 = [(PKSeat *)&v48 init];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = [dictionaryCopy PKStringForKey:@"seatNumber"];
  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 length];

    if (v9)
    {
      objc_storeStrong(&v5->_designation, v6);
      v5->_attributes |= 1uLL;
    }
  }

  v46 = v8;
  v10 = [dictionaryCopy PKStringForKey:@"seatRow"];
  v11 = v10;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 length];

    if (v13)
    {
      objc_storeStrong(&v5->_row, v10);
      v5->_attributes |= 2uLL;
    }
  }

  v14 = [dictionaryCopy PKStringForKey:{@"seatSection", v12}];
  v15 = v14;
  v16 = v15;
  if (v15)
  {
    v17 = [v15 length];

    if (v17)
    {
      objc_storeStrong(&v5->_section, v14);
      v5->_attributes |= 4uLL;
    }
  }

  v18 = [dictionaryCopy PKStringForKey:@"seatAisle"];
  v19 = v18;
  v20 = v19;
  if (v19)
  {
    v21 = [v19 length];

    if (v21)
    {
      objc_storeStrong(&v5->_aisle, v18);
      v5->_attributes |= 8uLL;
    }
  }

  v22 = [dictionaryCopy PKStringForKey:@"seatLevel"];
  v23 = v22;
  v24 = v23;
  if (v23)
  {
    v25 = [v23 length];

    if (v25)
    {
      objc_storeStrong(&v5->_level, v22);
      v5->_attributes |= 0x10uLL;
    }
  }

  v26 = [dictionaryCopy PKStringForKey:@"seatType"];
  v27 = v26;
  v28 = v27;
  if (v27)
  {
    v29 = [v27 length];

    if (v29)
    {
      objc_storeStrong(&v5->_type, v26);
      v5->_attributes |= 0x20uLL;
    }
  }

  v30 = [dictionaryCopy PKStringForKey:@"seatDescription"];
  v31 = v30;
  v32 = v31;
  if (v31)
  {
    v33 = [v31 length];

    if (v33)
    {
      objc_storeStrong(&v5->_seatDescription, v30);
      v5->_attributes |= 0x80uLL;
    }
  }

  v34 = [dictionaryCopy PKStringForKey:@"seatIdentifier"];
  v35 = v34;
  v36 = v35;
  if (v35)
  {
    v37 = [v35 length];

    if (v37)
    {
      objc_storeStrong(&v5->_identifier, v34);
      v5->_attributes |= 0x100uLL;
    }
  }

  v38 = [dictionaryCopy PKStringForKey:@"seatSectionColor"];
  if (!v38)
  {
    attributes = v5->_attributes;

    if (attributes)
    {
      goto LABEL_30;
    }

LABEL_34:
    v42 = 0;
    goto LABEL_35;
  }

  v39 = [PKColor colorFromString:v38];
  if (!v39)
  {
    v43 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "[PKSeatingInformation] Unable to parse sectionColor, ignoring", buf, 2u);
    }

    goto LABEL_34;
  }

  sectionColor = v5->_sectionColor;
  v5->_sectionColor = v39;

  v5->_attributes |= 0x40uLL;
LABEL_30:
  v42 = v5;
LABEL_35:

  return v42;
}

- (unint64_t)diffFromSeat:(id)seat
{
  if (!seat)
  {
    return 511;
  }

  designation = self->_designation;
  v5 = *(seat + 2);
  seatCopy = seat;
  if (designation)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = designation == v5;
  }

  else
  {
    v9 = [(NSString *)designation isEqual:v5];
  }

  v10 = v9 ^ 1u;
  row = self->_row;
  v12 = seatCopy[3];
  if (row && v12)
  {
    v13 = [(NSString *)row isEqual:?];
  }

  else
  {
    v13 = row == v12;
  }

  if (!v13)
  {
    v10 |= 2uLL;
  }

  section = self->_section;
  v15 = seatCopy[4];
  if (section && v15)
  {
    v16 = [(NSString *)section isEqual:?];
  }

  else
  {
    v16 = section == v15;
  }

  if (!v16)
  {
    v10 |= 4uLL;
  }

  aisle = self->_aisle;
  v18 = seatCopy[5];
  if (aisle && v18)
  {
    v19 = [(NSString *)aisle isEqual:?];
  }

  else
  {
    v19 = aisle == v18;
  }

  if (!v19)
  {
    v10 |= 8uLL;
  }

  level = self->_level;
  v21 = seatCopy[6];
  if (level && v21)
  {
    v22 = [(NSString *)level isEqual:?];
  }

  else
  {
    v22 = level == v21;
  }

  if (!v22)
  {
    v10 |= 0x10uLL;
  }

  type = self->_type;
  v24 = seatCopy[7];
  if (type && v24)
  {
    v25 = [(NSString *)type isEqual:?];
  }

  else
  {
    v25 = type == v24;
  }

  if (!v25)
  {
    v10 |= 0x20uLL;
  }

  sectionColor = self->_sectionColor;
  v27 = seatCopy[8];
  if (sectionColor && v27)
  {
    v28 = [(PKColor *)sectionColor isEqual:?];
  }

  else
  {
    v28 = sectionColor == v27;
  }

  if (!v28)
  {
    v10 |= 0x40uLL;
  }

  seatDescription = self->_seatDescription;
  v30 = seatCopy[9];
  if (seatDescription && v30)
  {
    v31 = [(NSString *)seatDescription isEqual:?];
  }

  else
  {
    v31 = seatDescription == v30;
  }

  if (v31)
  {
    v32 = v10;
  }

  else
  {
    v32 = v10 | 0x80;
  }

  identifier = self->_identifier;
  v34 = seatCopy[10];

  if (identifier && v34)
  {
    v35 = [(NSString *)identifier isEqual:v34];
  }

  else
  {
    v35 = identifier == v34;
  }

  if (v35)
  {
    return v32;
  }

  else
  {
    return v32 | 0x100;
  }
}

- (id)localizedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_level)
  {
    v4 = PKLocalizedTicketingString(&cfstr_SeatLevel.isa, &stru_1F2281668.isa, self->_level);
    [v3 addObject:v4];
  }

  if (self->_aisle)
  {
    v5 = PKLocalizedTicketingString(&cfstr_SeatAisle.isa, &stru_1F2281668.isa, self->_aisle);
    [v3 addObject:v5];
  }

  if (self->_section)
  {
    v6 = PKLocalizedTicketingString(&cfstr_SeatSection.isa, &stru_1F2281668.isa, self->_section);
    [v3 addObject:v6];
  }

  if (self->_row)
  {
    v7 = PKLocalizedTicketingString(&cfstr_SeatRow.isa, &stru_1F2281668.isa, self->_row);
    [v3 addObject:v7];
  }

  if (self->_designation)
  {
    v8 = PKLocalizedTicketingString(&cfstr_SeatNumber_0.isa, &stru_1F2281668.isa, self->_designation);
    [v3 addObject:v8];
  }

  v9 = PKLocalizedTicketingString(&cfstr_LocalizedListD.isa, 0);
  v10 = [v3 componentsJoinedByString:v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKSeat *)self isEqualToSeat:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSeat:(id)seat
{
  seatCopy = seat;
  v5 = seatCopy[2];
  v6 = self->_designation;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      LOBYTE(v10) = 0;
      goto LABEL_56;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_57;
    }
  }

  v11 = seatCopy[3];
  v6 = self->_row;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    LOBYTE(v10) = 0;
    if (!v6 || !v12)
    {
      goto LABEL_56;
    }

    v10 = [(NSString *)v6 isEqualToString:v12];

    if (!v10)
    {
      goto LABEL_57;
    }
  }

  v13 = seatCopy[4];
  v6 = self->_section;
  v14 = v13;
  v8 = v14;
  if (v6 == v14)
  {
  }

  else
  {
    LOBYTE(v10) = 0;
    if (!v6 || !v14)
    {
      goto LABEL_56;
    }

    v10 = [(NSString *)v6 isEqualToString:v14];

    if (!v10)
    {
      goto LABEL_57;
    }
  }

  v15 = seatCopy[5];
  v6 = self->_aisle;
  v16 = v15;
  v8 = v16;
  if (v6 == v16)
  {
  }

  else
  {
    LOBYTE(v10) = 0;
    if (!v6 || !v16)
    {
      goto LABEL_56;
    }

    v10 = [(NSString *)v6 isEqualToString:v16];

    if (!v10)
    {
      goto LABEL_57;
    }
  }

  v17 = seatCopy[6];
  v6 = self->_level;
  v18 = v17;
  v8 = v18;
  if (v6 == v18)
  {
  }

  else
  {
    LOBYTE(v10) = 0;
    if (!v6 || !v18)
    {
      goto LABEL_56;
    }

    v10 = [(NSString *)v6 isEqualToString:v18];

    if (!v10)
    {
      goto LABEL_57;
    }
  }

  v19 = seatCopy[7];
  v6 = self->_type;
  v20 = v19;
  v8 = v20;
  if (v6 == v20)
  {
  }

  else
  {
    LOBYTE(v10) = 0;
    if (!v6 || !v20)
    {
      goto LABEL_56;
    }

    v10 = [(NSString *)v6 isEqualToString:v20];

    if (!v10)
    {
      goto LABEL_57;
    }
  }

  sectionColor = self->_sectionColor;
  v22 = seatCopy[8];
  if (sectionColor && v22)
  {
    if ([(PKColor *)sectionColor isEqual:?])
    {
LABEL_43:
      v23 = seatCopy[9];
      v6 = self->_seatDescription;
      v24 = v23;
      v8 = v24;
      if (v6 == v24)
      {

LABEL_51:
        identifier = self->_identifier;
        v26 = seatCopy[10];
        v6 = identifier;
        v27 = v26;
        v8 = v27;
        if (v6 == v27)
        {
          LOBYTE(v10) = 1;
        }

        else
        {
          LOBYTE(v10) = 0;
          if (v6 && v27)
          {
            LOBYTE(v10) = [(NSString *)v6 isEqualToString:v27];
          }
        }

        goto LABEL_56;
      }

      LOBYTE(v10) = 0;
      if (v6 && v24)
      {
        v10 = [(NSString *)v6 isEqualToString:v24];

        if (!v10)
        {
          goto LABEL_57;
        }

        goto LABEL_51;
      }

LABEL_56:

      goto LABEL_57;
    }
  }

  else if (sectionColor == v22)
  {
    goto LABEL_43;
  }

  LOBYTE(v10) = 0;
LABEL_57:

  return v10;
}

- (PKSeat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = PKSeat;
  v5 = [(PKSeat *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"designation"];
    designation = v5->_designation;
    v5->_designation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"row"];
    row = v5->_row;
    v5->_row = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"section"];
    section = v5->_section;
    v5->_section = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aisle"];
    aisle = v5->_aisle;
    v5->_aisle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"level"];
    level = v5->_level;
    v5->_level = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionColor"];
    sectionColor = v5->_sectionColor;
    v5->_sectionColor = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    seatDescription = v5->_seatDescription;
    v5->_seatDescription = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  designation = self->_designation;
  coderCopy = coder;
  [coderCopy encodeObject:designation forKey:@"designation"];
  [coderCopy encodeObject:self->_row forKey:@"row"];
  [coderCopy encodeObject:self->_section forKey:@"section"];
  [coderCopy encodeObject:self->_aisle forKey:@"aisle"];
  [coderCopy encodeObject:self->_level forKey:@"level"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_sectionColor forKey:@"sectionColor"];
  [coderCopy encodeObject:self->_seatDescription forKey:@"description"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

@end