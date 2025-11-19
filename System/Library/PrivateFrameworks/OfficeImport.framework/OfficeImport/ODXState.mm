@interface ODXState
- (ODXState)initWithOfficeArtState:(id)a3;
- (void)setupNSForXMLFormat:(int)a3;
@end

@implementation ODXState

- (ODXState)initWithOfficeArtState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ODXState;
  v6 = [(OCXState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mOfficeArtState, a3);
    [(ODXState *)v7 setupNSForXMLFormat:[(OCXState *)v7->mOfficeArtState xmlFormat]];
  }

  return v7;
}

- (void)setupNSForXMLFormat:(int)a3
{
  v3 = *&a3;
  v9.receiver = self;
  v9.super_class = ODXState;
  [(OCXState *)&v9 setupNSForXMLFormat:?];
  v5 = [CXNamespace alloc];
  v6 = v5;
  if (v3)
  {
    v7 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/diagram"];
    v8 = [(CXNamespace *)v6 initWithUri:"http://purl.oclc.org/ooxml/drawingml/diagram" fallbackNamespace:v7];
    [(ODXState *)self setODXDiagramNamespace:v8];
  }

  else
  {
    v7 = [(CXNamespace *)v5 initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/diagram"];
    [(ODXState *)self setODXDiagramNamespace:v7];
  }

  [(OAXDrawingState *)self->mOfficeArtState setupNSForXMLFormat:v3];
}

@end