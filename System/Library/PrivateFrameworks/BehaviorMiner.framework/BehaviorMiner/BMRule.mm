@interface BMRule
- (BMRule)initWithAntecedent:(id)antecedent consequent:(id)consequent support:(double)support confidence:(double)confidence basketCount:(unint64_t)count absoluteSupport:(unint64_t)absoluteSupport absoluteAntecedentSupport:(unint64_t)antecedentSupport absoluteConsequentSupport:(unint64_t)self0 uniqueDaysLastWeek:(unint64_t)self1 uniqueDaysTotal:(unint64_t)self2;
- (BMRule)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (double)conviction;
- (double)lift;
- (double)rulePowerFactor;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMRule

- (BMRule)initWithAntecedent:(id)antecedent consequent:(id)consequent support:(double)support confidence:(double)confidence basketCount:(unint64_t)count absoluteSupport:(unint64_t)absoluteSupport absoluteAntecedentSupport:(unint64_t)antecedentSupport absoluteConsequentSupport:(unint64_t)self0 uniqueDaysLastWeek:(unint64_t)self1 uniqueDaysTotal:(unint64_t)self2
{
  antecedentCopy = antecedent;
  consequentCopy = consequent;
  v26.receiver = self;
  v26.super_class = BMRule;
  v23 = [(BMRule *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_antecedent, antecedent);
    objc_storeStrong(&v24->_consequent, consequent);
    v24->_support = support;
    v24->_confidence = confidence;
    v24->_basketCount = count;
    v24->_absoluteSupport = absoluteSupport;
    v24->_absoluteAntecedentSupport = antecedentSupport;
    v24->_absoluteConsequentSupport = consequentSupport;
    v24->_uniqueDaysLastWeek = week;
    v24->_uniqueDaysTotal = total;
  }

  return v24;
}

- (double)lift
{
  absoluteAntecedentSupport = [(BMRule *)self absoluteAntecedentSupport];
  v4 = absoluteAntecedentSupport / [(BMRule *)self basketCount];
  absoluteConsequentSupport = [(BMRule *)self absoluteConsequentSupport];
  v6 = absoluteConsequentSupport / [(BMRule *)self basketCount];
  [(BMRule *)self support];
  return v7 / (v4 * v6);
}

- (double)conviction
{
  absoluteConsequentSupport = [(BMRule *)self absoluteConsequentSupport];
  v4 = 1.0 - absoluteConsequentSupport / [(BMRule *)self basketCount];
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
  antecedent = [(BMRule *)self antecedent];
  consequent = [(BMRule *)self consequent];
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
  v20 = [v19 stringWithFormat:@"{%@}->{%@}, absolute support: %@, support: %@, confidence: %@, lift: %@, conviction: %@, rulePowerFactor: %@, uniqueDaysLastWeek: %@, uniqueDaysTotal: %@", antecedent, consequent, v4, v6, v8, v10, v12, v14, v15, v16];

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = equalCopy;
  antecedent = [v5 antecedent];
  antecedent2 = [(BMRule *)self antecedent];
  if (![antecedent isEqualToSet:antecedent2])
  {
    goto LABEL_8;
  }

  consequent = [v5 consequent];
  consequent2 = [(BMRule *)self consequent];
  if (![consequent isEqualToSet:consequent2] || (objc_msgSend(v5, "support"), v11 = v10, -[BMRule support](self, "support"), v11 != v12))
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
  antecedent = [(BMRule *)self antecedent];
  v4 = [antecedent hash];
  consequent = [(BMRule *)self consequent];
  v6 = [consequent hash] ^ v4;
  [(BMRule *)self support];
  v8 = v6 ^ vcvtd_n_u64_f64(v7, 0x40uLL);
  [(BMRule *)self confidence];
  v10 = vcvtd_n_u64_f64(v9, 0x40uLL);

  return v8 ^ v10;
}

- (BMRule)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v31 = [coderCopy decodeObjectOfClasses:v7 forKey:@"antecedent"];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v29 = [coderCopy decodeObjectOfClasses:v10 forKey:@"consequent"];

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"support"];
  [v30 doubleValue];
  v12 = v11;
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  [v28 doubleValue];
  v14 = v13;
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"basketCount"];
  unsignedLongValue = [v27 unsignedLongValue];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"absoluteSupport"];
  unsignedLongValue2 = [v15 unsignedLongValue];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"absoluteAntecedentSupport"];
  unsignedLongValue3 = [v16 unsignedLongValue];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"absoluteConsequentSupport"];
  unsignedLongValue4 = [v18 unsignedLongValue];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueDaysLastWeek"];
  unsignedLongValue5 = [v20 unsignedLongValue];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueDaysTotal"];

  v23 = [objc_alloc(objc_opt_class()) initWithAntecedent:v31 consequent:v29 support:unsignedLongValue confidence:unsignedLongValue2 basketCount:unsignedLongValue3 absoluteSupport:unsignedLongValue4 absoluteAntecedentSupport:v12 absoluteConsequentSupport:v14 uniqueDaysLastWeek:unsignedLongValue5 uniqueDaysTotal:{objc_msgSend(v22, "unsignedLongValue")}];
  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  antecedent = self->_antecedent;
  coderCopy = coder;
  [coderCopy encodeObject:antecedent forKey:@"antecedent"];
  [coderCopy encodeObject:self->_consequent forKey:@"consequent"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_support];
  [coderCopy encodeObject:v6 forKey:@"support"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  [coderCopy encodeObject:v7 forKey:@"confidence"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_basketCount];
  [coderCopy encodeObject:v8 forKey:@"basketCount"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_absoluteSupport];
  [coderCopy encodeObject:v9 forKey:@"absoluteSupport"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_absoluteAntecedentSupport];
  [coderCopy encodeObject:v10 forKey:@"absoluteAntecedentSupport"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_absoluteConsequentSupport];
  [coderCopy encodeObject:v11 forKey:@"absoluteConsequentSupport"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_uniqueDaysLastWeek];
  [coderCopy encodeObject:v12 forKey:@"uniqueDaysLastWeek"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_uniqueDaysTotal];
  [coderCopy encodeObject:v13 forKey:@"uniqueDaysTotal"];
}

@end