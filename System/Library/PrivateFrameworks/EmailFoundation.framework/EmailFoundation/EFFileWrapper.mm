@interface EFFileWrapper
- (EFFileWrapper)init;
- (EFFileWrapper)initWithSerializedRepresentation:(id)a3;
- (EFFileWrapper)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)initDirectoryWithFileWrappers:(id)a3;
- (id)initRegularFileWithContents:(id)a3;
- (void)_initializePathComponents;
- (void)setFilename:(id)a3;
- (void)setFilenamePathComponent:(id)a3;
- (void)setPreferredFilename:(id)a3;
- (void)setPreferredFilenamePathComponent:(id)a3;
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
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = EFFileWrapper;
    v2 = objc_msgSendSuper2(&v9, sel_filename);
    v3 = [EFPathComponent pathComponentWithString:v2];
    v4 = a1[12];
    a1[12] = v3;

    v8.receiver = a1;
    v8.super_class = EFFileWrapper;
    v5 = objc_msgSendSuper2(&v8, sel_preferredFilename);
    v6 = [EFPathComponent pathComponentWithString:v5];
    v7 = a1[11];
    a1[11] = v6;
  }
}

- (id)initRegularFileWithContents:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EFFileWrapper;
  v5 = [(EFFileWrapper *)&v8 initRegularFileWithContents:v4];
  v6 = v5;
  if (v5)
  {
    [(EFFileWrapper *)v5 _initializePathComponents];
  }

  return v6;
}

- (EFFileWrapper)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = EFFileWrapper;
  v9 = [(EFFileWrapper *)&v12 initWithURL:v8 options:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    [(EFFileWrapper *)v9 _initializePathComponents];
  }

  return v10;
}

- (id)initDirectoryWithFileWrappers:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EFFileWrapper;
  v5 = [(EFFileWrapper *)&v8 initDirectoryWithFileWrappers:v4];
  v6 = v5;
  if (v5)
  {
    [(EFFileWrapper *)v5 _initializePathComponents];
  }

  return v6;
}

- (EFFileWrapper)initWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EFFileWrapper;
  v5 = [(EFFileWrapper *)&v8 initWithSerializedRepresentation:v4];
  v6 = v5;
  if (v5)
  {
    [(EFFileWrapper *)v5 _initializePathComponents];
  }

  return v6;
}

- (void)setPreferredFilenamePathComponent:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_preferredFilenamePathComponent, a3);
  v6 = [v5 sanitizedString];
  v7.receiver = self;
  v7.super_class = EFFileWrapper;
  [(EFFileWrapper *)&v7 setPreferredFilename:v6];
}

- (void)setFilenamePathComponent:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_filenamePathComponent, a3);
  v6 = [v5 sanitizedString];
  v7.receiver = self;
  v7.super_class = EFFileWrapper;
  [(EFFileWrapper *)&v7 setFilename:v6];
}

- (void)setPreferredFilename:(id)a3
{
  v4 = [EFPathComponent pathComponentWithString:a3];
  [(EFFileWrapper *)self setPreferredFilenamePathComponent:?];
}

- (void)setFilename:(id)a3
{
  v4 = [EFPathComponent pathComponentWithString:a3];
  [(EFFileWrapper *)self setFilenamePathComponent:?];
}

@end