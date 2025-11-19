@interface IPFeatureSentenceFragment
+ (id)fragmentWithRange:(_NSRange)a3 clusterType:(unint64_t)a4;
- (_NSRange)range;
- (id)description;
- (unint64_t)mainPolarity;
@end

@implementation IPFeatureSentenceFragment

+ (id)fragmentWithRange:(_NSRange)a3 clusterType:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  v7 = objc_alloc_init(IPFeatureSentenceFragment);
  [(IPFeatureSentenceFragment *)v7 setRange:location, length];
  [(IPFeatureSentenceFragment *)v7 setClusterType:a4];

  return v7;
}

- (unint64_t)mainPolarity
{
  [(IPFeatureSentenceFragment *)self probability_None];
  v4 = v3;
  [(IPFeatureSentenceFragment *)self probability_Rejection];
  v6 = v5;
  [(IPFeatureSentenceFragment *)self probability_Proposal];
  v8 = v7;
  [(IPFeatureSentenceFragment *)self probability_Confirmation];
  if (v4 > 0.5)
  {
    return 1;
  }

  if (v8 + v9 >= 0.66)
  {
    v14 = v9 <= v8;
    v15 = 2;
  }

  else
  {
    if (v6 >= 0.35)
    {
      return 4;
    }

    if (v8 >= 0.54 && v8 > v6 && v8 > v9)
    {
      return 2;
    }

    v14 = v9 < 0.54 || v9 <= v6 || v9 <= v8;
    v15 = 5;
  }

  if (v14)
  {
    return v15;
  }

  else
  {
    return 3;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = IPFeatureSentenceFragment;
  v4 = [(IPFeatureSentenceFragment *)&v9 description];
  v5 = [IPFeatureSentence humanReadableFeaturePolarity:[(IPFeatureSentenceFragment *)self mainPolarity]];
  v6 = [IPEventClassificationType humanReadableClusterType:[(IPFeatureSentenceFragment *)self clusterType]];
  v7 = [v3 stringWithFormat:@"%@ MainPolarity:%@ Cluster:%@ \nprobability_None=%f \nprobability_Rejection=%f \nprobability_Proposal=%f \nprobability_Confirmation=%f", v4, v5, v6, *&self->_probability_None, *&self->_probability_Rejection, *&self->_probability_Proposal, *&self->_probability_Confirmation];

  return v7;
}

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end