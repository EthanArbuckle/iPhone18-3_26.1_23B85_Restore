@interface MAKGEntityFactory
- (MAKGEntityFactory)initWithSpecification:(id)specification;
- (id)edgeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode;
- (id)nodeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties;
@end

@implementation MAKGEntityFactory

- (id)edgeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode
{
  v27 = 1;
  v26 = 0;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  propertiesCopy = properties;
  MALabelAndDomainFromKGLabels(labels, &v26, &v27);
  v15 = v26;
  v25 = 0;
  v24 = 0;
  [MAKGWeightConversion maPropertiesAndWeightForKGProperties:propertiesCopy maProperties:&v24 maWeight:&v25];

  specification = self->_specification;
  v17 = v27;
  v18 = v24;
  v19 = objc_alloc([(MAGraphSpecification *)specification edgeClassWithLabel:v15 domain:v17]);
  LODWORD(v20) = v25;
  v21 = [v19 initWithLabel:v15 sourceNode:nodeCopy targetNode:targetNodeCopy domain:v27 weight:v18 properties:v20];

  [v21 setIdentifier:identifier];
  rootGraphReference = [(MAGraphSpecification *)self->_specification rootGraphReference];

  [v21 setGraphReference:rootGraphReference];

  return v21;
}

- (id)nodeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties
{
  v20 = 1;
  v19 = 0;
  propertiesCopy = properties;
  MALabelAndDomainFromKGLabels(labels, &v19, &v20);
  v9 = v19;
  v10 = [(MAGraphSpecification *)self->_specification nodeClassWithLabel:v9 domain:v20];
  v18 = 0;
  v17 = 0;
  [MAKGWeightConversion maPropertiesAndWeightForKGProperties:propertiesCopy maProperties:&v17 maWeight:&v18];

  v11 = v17;
  v12 = [v10 alloc];
  LODWORD(v13) = v18;
  v14 = [v12 initWithLabel:v9 domain:v20 weight:v11 properties:v13];
  [v14 setIdentifier:identifier];
  rootGraphReference = [(MAGraphSpecification *)self->_specification rootGraphReference];

  [v14 setGraphReference:rootGraphReference];

  return v14;
}

- (MAKGEntityFactory)initWithSpecification:(id)specification
{
  specificationCopy = specification;
  v9.receiver = self;
  v9.super_class = MAKGEntityFactory;
  v6 = [(MAKGEntityFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specification, specification);
  }

  return v7;
}

@end