@interface EFFileWrapper
- (EFFileWrapper)init;
- (EFFileWrapper)initWithSerializedRepresentation:(id)representation;
- (EFFileWrapper)initWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)initDirectoryWithFileWrappers:(id)wrappers;
- (id)initRegularFileWithContents:(id)contents;
- (void)_initializePathComponents;
- (void)setFilename:(id)filename;
- (void)setFilenamePathComponent:(id)component;
- (void)setPreferredFilename:(id)filename;
- (void)setPreferredFilenamePathComponent:(id)component;
@end

@implementation EFFileWrapper

- (EFFileWrapper)init
{
  v5.receiver = self;
  v5.super_class = EFFileWrapper;
  v2 = [(EFFileWrapper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(EFFileWrapper *)v2 _initializePathComponents];
  }

  return v3;
}

- (void)_initializePathComponents
{
  if (self)
  {
    v9.receiver = self;
    v9.super_class = EFFileWrapper;
    v2 = objc_msgSendSuper2(&v9, sel_filename);
    v3 = [EFPathComponent pathComponentWithString:v2];
    v4 = self[12];
    self[12] = v3;

    v8.receiver = self;
    v8.super_class = EFFileWrapper;
    v5 = objc_msgSendSuper2(&v8, sel_preferredFilename);
    v6 = [EFPathComponent pathComponentWithString:v5];
    v7 = self[11];
    self[11] = v6;
  }
}

- (id)initRegularFileWithContents:(id)contents
{
  contentsCopy = contents;
  v8.receiver = self;
  v8.super_class = EFFileWrapper;
  v5 = [(EFFileWrapper *)&v8 initRegularFileWithContents:contentsCopy];
  v6 = v5;
  if (v5)
  {
    [(EFFileWrapper *)v5 _initializePathComponents];
  }

  return v6;
}

- (EFFileWrapper)initWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = EFFileWrapper;
  v9 = [(EFFileWrapper *)&v12 initWithURL:lCopy options:options error:error];
  v10 = v9;
  if (v9)
  {
    [(EFFileWrapper *)v9 _initializePathComponents];
  }

  return v10;
}

- (id)initDirectoryWithFileWrappers:(id)wrappers
{
  wrappersCopy = wrappers;
  v8.receiver = self;
  v8.super_class = EFFileWrapper;
  v5 = [(EFFileWrapper *)&v8 initDirectoryWithFileWrappers:wrappersCopy];
  v6 = v5;
  if (v5)
  {
    [(EFFileWrapper *)v5 _initializePathComponents];
  }

  return v6;
}

- (EFFileWrapper)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v8.receiver = self;
  v8.super_class = EFFileWrapper;
  v5 = [(EFFileWrapper *)&v8 initWithSerializedRepresentation:representationCopy];
  v6 = v5;
  if (v5)
  {
    [(EFFileWrapper *)v5 _initializePathComponents];
  }

  return v6;
}

- (void)setPreferredFilenamePathComponent:(id)component
{
  componentCopy = component;
  objc_storeStrong(&self->_preferredFilenamePathComponent, component);
  sanitizedString = [componentCopy sanitizedString];
  v7.receiver = self;
  v7.super_class = EFFileWrapper;
  [(EFFileWrapper *)&v7 setPreferredFilename:sanitizedString];
}

- (void)setFilenamePathComponent:(id)component
{
  componentCopy = component;
  objc_storeStrong(&self->_filenamePathComponent, component);
  sanitizedString = [componentCopy sanitizedString];
  v7.receiver = self;
  v7.super_class = EFFileWrapper;
  [(EFFileWrapper *)&v7 setFilename:sanitizedString];
}

- (void)setPreferredFilename:(id)filename
{
  v4 = [EFPathComponent pathComponentWithString:filename];
  [(EFFileWrapper *)self setPreferredFilenamePathComponent:?];
}

- (void)setFilename:(id)filename
{
  v4 = [EFPathComponent pathComponentWithString:filename];
  [(EFFileWrapper *)self setFilenamePathComponent:?];
}

@end