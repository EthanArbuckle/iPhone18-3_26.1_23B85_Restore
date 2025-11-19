@interface COBallot
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBallot:(id)a3;
- (COBallot)init;
- (COBallot)initWithBallot:(id)a3;
- (COBallot)initWithCandidate:(id)a3;
- (COBallot)initWithCoder:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COBallot

- (COBallot)init
{
  v8.receiver = self;
  v8.super_class = COBallot;
  v2 = [(COBallot *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB70]);
    candidates = v2->_candidates;
    v2->_candidates = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    discovery = v2->_discovery;
    v2->_discovery = v5;
  }

  return v2;
}

- (COBallot)initWithBallot:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = COBallot;
  v5 = [(COBallot *)&v13 init];
  if (v5)
  {
    v6 = [v4 candidates];
    v7 = [v6 copy];
    candidates = v5->_candidates;
    v5->_candidates = v7;

    v9 = [v4 discovery];
    v10 = [v9 copy];
    discovery = v5->_discovery;
    v5->_discovery = v10;
  }

  return v5;
}

- (COBallot)initWithCandidate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(COMutableBallot);
  [(COMutableBallot *)v5 addCandidate:v4];

  v6 = [(COBallot *)self initWithBallot:v5];
  return v6;
}

- (COBallot)initWithCoder:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"version"] != 1)
  {

    v5 = 0;
    goto LABEL_31;
  }

  v5 = [(COBallot *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v9;

    v11 = v5->_candidates;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v12 = v5->_candidates;
      v13 = [(NSOrderedSet *)v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (!v13)
      {
        goto LABEL_12;
      }

      v14 = v13;
      v15 = *v41;
LABEL_6:
      v16 = 0;
      while (1)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v40 + 1) + 8 * v16);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [(NSOrderedSet *)v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (!v14)
          {
LABEL_12:

            v18 = MEMORY[0x277CBEB98];
            v19 = objc_opt_class();
            v20 = objc_opt_class();
            v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];

            v22 = [v4 decodeObjectOfClasses:v21 forKey:@"discovery"];
            discovery = v5->_discovery;
            v5->_discovery = v22;

            if (!v5->_discovery && ([v4 containsValueForKey:@"discovery"] & 1) == 0)
            {
              v24 = objc_alloc_init(MEMORY[0x277CBEAC0]);
              v25 = v5->_discovery;
              v5->_discovery = v24;
            }

            v26 = v5->_discovery;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v5 = 0;
              goto LABEL_30;
            }

            objc_opt_class();
            objc_opt_class();
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v27 = v5->_discovery;
            v28 = [(NSDictionary *)v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (!v28)
            {
              goto LABEL_36;
            }

            v29 = v28;
            v30 = *v37;
LABEL_18:
            v31 = 0;
            while (1)
            {
              if (*v37 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v36 + 1) + 8 * v31);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                break;
              }

              v33 = [(NSDictionary *)v5->_discovery objectForKey:v32];
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_35;
              }

              if (v29 == ++v31)
              {
                v29 = [(NSDictionary *)v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
                if (v29)
                {
                  goto LABEL_18;
                }

LABEL_36:

LABEL_30:
                goto LABEL_31;
              }
            }

            v33 = v5;
LABEL_35:

            v5 = 0;
            goto LABEL_36;
          }

          goto LABEL_6;
        }
      }
    }

    else
    {
    }

    v5 = 0;
    v21 = v8;
    goto LABEL_30;
  }

LABEL_31:

  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:1 forKey:@"version"];
  v5 = [(COBallot *)self candidates];
  [v4 encodeObject:v5 forKey:@"candidates"];

  v6 = [(COBallot *)self discovery];
  [v4 encodeObject:v6 forKey:@"discovery"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COBallot *)self candidates];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"<%@: %p, candidates = %@>", v5, self, v7];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [COMutableBallot alloc];

  return [(COBallot *)v4 initWithBallot:self];
}

- (unint64_t)hash
{
  v2 = [(COBallot *)self candidates];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COBallot *)self isEqualToBallot:v4];
  }

  return v5;
}

- (BOOL)isEqualToBallot:(id)a3
{
  v4 = a3;
  v5 = [(COBallot *)self candidates];
  v6 = [v4 candidates];

  LOBYTE(v4) = [v5 isEqualToOrderedSet:v6];
  return v4;
}

@end