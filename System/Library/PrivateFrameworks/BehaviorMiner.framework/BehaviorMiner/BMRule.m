@interface BMRule
- (BMRule)initWithAntecedent:(id)a3 consequent:(id)a4 support:(double)a5 confidence:(double)a6 basketCount:(unint64_t)a7 absoluteSupport:(unint64_t)a8 absoluteAntecedentSupport:(unint64_t)a9 absoluteConsequentSupport:(unint64_t)a10 uniqueDaysLastWeek:(unint64_t)a11 uniqueDaysTotal:(unint64_t)a12;
- (BMRule)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (double)conviction;
- (double)lift;
- (double)rulePowerFactor;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMRule

- (BMRule)initWithAntecedent:(id)a3 consequent:(id)a4 support:(double)a5 confidence:(double)a6 basketCount:(unint64_t)a7 absoluteSupport:(unint64_t)a8 absoluteAntecedentSupport:(unint64_t)a9 absoluteConsequentSupport:(unint64_t)a10 uniqueDaysLastWeek:(unint64_t)a11 uniqueDaysTotal:(unint64_t)a12
{
  v21 = a3;
  v22 = a4;
  v26.receiver = self;
  v26.super_class = BMRule;
  v23 = [(BMRule *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_antecedent, a3);
    objc_storeStrong(&v24->_consequent, a4);
    v24->_support = a5;
    v24->_confidence = a6;
    v24->_basketCount = a7;
    v24->_absoluteSupport = a8;
    v24->_absoluteAntecedentSupport = a9;
    v24->_absoluteConsequentSupport = a10;
    v24->_uniqueDaysLastWeek = a11;
    v24->_uniqueDaysTotal = a12;
  }

  return v24;
}

- (double)lift
{
  v3 = [(BMRule *)self absoluteAntecedentSupport];
  v4 = v3 / [(BMRule *)self basketCount];
  v5 = [(BMRule *)self absoluteConsequentSupport];
  v6 = v5 / [(BMRule *)self basketCount];
  [(BMRule *)self support];
  return v7 / (v4 * v6);
}

- (double)conviction
{
  v3 = [(BMRule *)self absoluteConsequentSupport];
  v4 = 1.0 - v3 / [(BMRule *)self basketCount];
  [(BMRule *)self confidence];
  return v4 / (1.0 - v5);
}

- (double)rulePowerFactor
{
  [(BMRule *)self support];
  v4 = v3;
  [(BMRule *)self confidence];
  return v4 * v5;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v18 = [(BMRule *)self antecedent];
  v3 = [(BMRule *)self consequent];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BMRule absoluteSupport](self, "absoluteSupport")}];
  v5 = MEMORY[0x277CCABB0];
  [(BMRule *)self support];
  v6 = [v5 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [(BMRule *)self confidence];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x277CCABB0];
  [(BMRule *)self lift];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x277CCABB0];
  [(BMRule *)self conviction];
  v12 = [v11 numberWithDouble:?];
  v13 = MEMORY[0x277CCABB0];
  [(BMRule *)self rulePowerFactor];
  v14 = [v13 numberWithDouble:?];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BMRule uniqueDaysLastWeek](self, "uniqueDaysLastWeek")}];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BMRule uniqueDaysTotal](self, "uniqueDaysTotal")}];
  v20 = [v19 stringWithFormat:@"{%@}->{%@}, absolute support: %@, support: %@, confidence: %@, lift: %@, conviction: %@, rulePowerFactor: %@, uniqueDaysLastWeek: %@, uniqueDaysTotal: %@", v18, v3, v4, v6, v8, v10, v12, v14, v15, v16];

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v5 antecedent];
  v7 = [(BMRule *)self antecedent];
  if (![v6 isEqualToSet:v7])
  {
    goto LABEL_8;
  }

  v8 = [v5 consequent];
  v9 = [(BMRule *)self consequent];
  if (![v8 isEqualToSet:v9] || (objc_msgSend(v5, "support"), v11 = v10, -[BMRule support](self, "support"), v11 != v12))
  {

LABEL_8:
    goto LABEL_9;
  }

  [v5 confidence];
  v14 = v13;
  [(BMRule *)self confidence];
  v16 = v15;

  if (v14 != v16)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v17 = 1;
LABEL_10:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(BMRule *)self antecedent];
  v4 = [v3 hash];
  v5 = [(BMRule *)self consequent];
  v6 = [v5 hash] ^ v4;
  [(BMRule *)self support];
  v8 = v6 ^ vcvtd_n_u64_f64(v7, 0x40uLL);
  [(BMRule *)self confidence];
  v10 = vcvtd_n_u64_f64(v9, 0x40uLL);

  return v8 ^ v10;
}

- (BMRule)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v31 = [v5 decodeObjectOfClasses:v7 forKey:@"antecedent"];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v29 = [v5 decodeObjectOfClasses:v10 forKey:@"consequent"];

  v30 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"support"];
  [v30 doubleValue];
  v12 = v11;
  v28 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  [v28 doubleValue];
  v14 = v13;
  v27 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"basketCount"];
  v26 = [v27 unsignedLongValue];
  v15 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"absoluteSupport"];
  v25 = [v15 unsignedLongValue];
  v16 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"absoluteAntecedentSupport"];
  v17 = [v16 unsignedLongValue];
  v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"absoluteConsequentSupport"];
  v19 = [v18 unsignedLongValue];
  v20 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueDaysLastWeek"];
  v21 = [v20 unsignedLongValue];
  v22 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueDaysTotal"];

  v23 = [objc_alloc(objc_opt_class()) initWithAntecedent:v31 consequent:v29 support:v26 confidence:v25 basketCount:v17 absoluteSupport:v19 absoluteAntecedentSupport:v12 absoluteConsequentSupport:v14 uniqueDaysLastWeek:v21 uniqueDaysTotal:{objc_msgSend(v22, "unsignedLongValue")}];
  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  antecedent = self->_antecedent;
  v5 = a3;
  [v5 encodeObject:antecedent forKey:@"antecedent"];
  [v5 encodeObject:self->_consequent forKey:@"consequent"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_support];
  [v5 encodeObject:v6 forKey:@"support"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  [v5 encodeObject:v7 forKey:@"confidence"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_basketCount];
  [v5 encodeObject:v8 forKey:@"basketCount"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_absoluteSupport];
  [v5 encodeObject:v9 forKey:@"absoluteSupport"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_absoluteAntecedentSupport];
  [v5 encodeObject:v10 forKey:@"absoluteAntecedentSupport"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_absoluteConsequentSupport];
  [v5 encodeObject:v11 forKey:@"absoluteConsequentSupport"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_uniqueDaysLastWeek];
  [v5 encodeObject:v12 forKey:@"uniqueDaysLastWeek"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_uniqueDaysTotal];
  [v5 encodeObject:v13 forKey:@"uniqueDaysTotal"];
}

@end