@interface MAKGEntityFactory
- (MAKGEntityFactory)initWithSpecification:(id)a3;
- (id)edgeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7;
- (id)nodeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5;
@end

@implementation MAKGEntityFactory

- (id)edgeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7
{
  v27 = 1;
  v26 = 0;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  MALabelAndDomainFromKGLabels(a4, &v26, &v27);
  v15 = v26;
  v25 = 0;
  v24 = 0;
  [MAKGWeightConversion maPropertiesAndWeightForKGProperties:v14 maProperties:&v24 maWeight:&v25];

  specification = self->_specification;
  v17 = v27;
  v18 = v24;
  v19 = objc_alloc([(MAGraphSpecification *)specification edgeClassWithLabel:v15 domain:v17]);
  LODWORD(v20) = v25;
  v21 = [v19 initWithLabel:v15 sourceNode:v13 targetNode:v12 domain:v27 weight:v18 properties:v20];

  [v21 setIdentifier:a3];
  v22 = [(MAGraphSpecification *)self->_specification rootGraphReference];

  [v21 setGraphReference:v22];

  return v21;
}

- (id)nodeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5
{
  v20 = 1;
  v19 = 0;
  v8 = a5;
  MALabelAndDomainFromKGLabels(a4, &v19, &v20);
  v9 = v19;
  v10 = [(MAGraphSpecification *)self->_specification nodeClassWithLabel:v9 domain:v20];
  v18 = 0;
  v17 = 0;
  [MAKGWeightConversion maPropertiesAndWeightForKGProperties:v8 maProperties:&v17 maWeight:&v18];

  v11 = v17;
  v12 = [v10 alloc];
  LODWORD(v13) = v18;
  v14 = [v12 initWithLabel:v9 domain:v20 weight:v11 properties:v13];
  [v14 setIdentifier:a3];
  v15 = [(MAGraphSpecification *)self->_specification rootGraphReference];

  [v14 setGraphReference:v15];

  return v14;
}

- (MAKGEntityFactory)initWithSpecification:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MAKGEntityFactory;
  v6 = [(MAKGEntityFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specification, a3);
  }

  return v7;
}

@end