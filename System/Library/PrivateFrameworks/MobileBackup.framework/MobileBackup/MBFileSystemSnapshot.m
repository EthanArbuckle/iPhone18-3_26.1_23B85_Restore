@interface MBFileSystemSnapshot
- (MBFileSystemSnapshot)initWithName:(id)a3 uuid:(id)a4 creationDate:(id)a5;
- (id)description;
@end

@implementation MBFileSystemSnapshot

- (MBFileSystemSnapshot)initWithName:(id)a3 uuid:(id)a4 creationDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MBFileSystemSnapshot;
  v11 = [(MBFileSystemSnapshot *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MBFileSystemSnapshot *)v11 setName:v8];
    [(MBFileSystemSnapshot *)v12 setUuid:v9];
    [(MBFileSystemSnapshot *)v12 setCreationDate:v10];
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MBFileSystemSnapshot *)self name];
  v5 = [(MBFileSystemSnapshot *)self uuid];
  v6 = [(MBFileSystemSnapshot *)self creationDate];
  v7 = MBStringWithDate();
  v8 = [(MBFileSystemSnapshot *)self creationDate];
  [v8 timeIntervalSince1970];
  v10 = [NSString stringWithFormat:@"<%@: name=%@, uuid=%@, creationDate=%@(%.3f)>", v3, v4, v5, v7, v9];

  return v10;
}

@end