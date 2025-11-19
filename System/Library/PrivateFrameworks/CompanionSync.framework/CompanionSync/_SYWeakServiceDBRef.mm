@interface _SYWeakServiceDBRef
- (_SYSharedServiceDB)db;
- (_SYWeakServiceDBRef)initWithServiceName:(id)a3;
@end

@implementation _SYWeakServiceDBRef

- (_SYWeakServiceDBRef)initWithServiceName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SYWeakServiceDBRef;
  v5 = [(_SYWeakServiceDBRef *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = v5;
  }

  return v5;
}

- (_SYSharedServiceDB)db
{
  WeakRetained = objc_loadWeakRetained(&self->_db);
  if (!WeakRetained)
  {
    v4 = [_SYSharedServiceDB alloc];
    v5 = [(_SYWeakServiceDBRef *)self name];
    WeakRetained = [(_SYSharedServiceDB *)v4 initWithServiceName:v5];

    objc_storeWeak(&self->_db, WeakRetained);
  }

  return WeakRetained;
}

@end