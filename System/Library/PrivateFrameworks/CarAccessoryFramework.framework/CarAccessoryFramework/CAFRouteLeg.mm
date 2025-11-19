@interface CAFRouteLeg
- (CAFRouteLeg)initWithCoordinates:(id)a3 destination:(id)a4 origin:(id)a5;
- (CAFRouteLeg)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFRouteLeg

- (CAFRouteLeg)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CAFRouteLeg;
  v5 = [(CAFRouteLeg *)&v16 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"coordinates"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    coordinates = v5->_coordinates;
    v5->_coordinates = v7;

    objc_opt_class();
    v9 = [v4 objectForKey:@"destination"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    destination = v5->_destination;
    v5->_destination = v10;

    objc_opt_class();
    v12 = [v4 objectForKey:@"origin"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    origin = v5->_origin;
    v5->_origin = v13;
  }

  return v5;
}

- (CAFRouteLeg)initWithCoordinates:(id)a3 destination:(id)a4 origin:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CAFRouteLeg;
  v12 = [(CAFRouteLeg *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_coordinates, a3);
    objc_storeStrong(&v13->_destination, a4);
    objc_storeStrong(&v13->_origin, a5);
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"coordinates";
  v3 = [(CAFRouteLeg *)self coordinates];
  v4 = [v3 arrayRepresentation];
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v16[0] = v5;
  v15[1] = @"destination";
  v6 = [(CAFRouteLeg *)self destination];
  v7 = [v6 dictionaryRepresentation];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = v8;
  v15[2] = @"origin";
  v9 = [(CAFRouteLeg *)self origin];
  v10 = [v9 dictionaryRepresentation];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v16[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (!v10)
  {
  }

  if (!v7)
  {
  }

  if (!v4)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFRouteLeg *)self coordinates];
  v6 = [(CAFRouteLeg *)self destination];
  v7 = [(CAFRouteLeg *)self origin];
  v8 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %@ }>", v4, self, @"coordinates", v5, @"destination", v6, @"origin", v7];

  return v8;
}

@end