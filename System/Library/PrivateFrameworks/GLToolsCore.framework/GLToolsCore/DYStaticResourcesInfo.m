@interface DYStaticResourcesInfo
- (DYStaticResourcesInfo)initWithCoder:(id)a3;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYStaticResourcesInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYStaticResourcesInfo;
  [(DYStaticResourcesInfo *)&v3 dealloc];
}

- (DYStaticResourcesInfo)initWithCoder:(id)a3
{
  v26.receiver = self;
  v26.super_class = DYStaticResourcesInfo;
  v4 = [(DYStaticResourcesInfo *)&v26 init];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->textures = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"textures"}];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v4->renderbuffers = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"renderbuffers"}];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v4->framebuffers = [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"framebuffers"}];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v4->buffers = [a3 decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, objc_opt_class(), 0), @"buffers"}];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v4->vertexArrays = [a3 decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithObjects:", v14, objc_opt_class(), 0), @"vertexArrays"}];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v4->queries = [a3 decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithObjects:", v16, objc_opt_class(), 0), @"queries"}];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v4->shaders = [a3 decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithObjects:", v18, v19, objc_opt_class(), 0), @"shaders"}];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v4->programs = [a3 decodeObjectOfClasses:objc_msgSend(v20 forKey:{"setWithObjects:", v21, v22, objc_opt_class(), 0), @"programs"}];
    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v4->programPipelines = [a3 decodeObjectOfClasses:objc_msgSend(v23 forKey:{"setWithObjects:", v24, objc_opt_class(), 0), @"programPipelines"}];
  }

  return v4;
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = DYStaticResourcesInfo;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@\n\ttextures = %@\n\trenderbuffers = %@\n\tframebuffers = %@\n\tbuffers = %@\n\tvertexArrays = %@\n\tqueries = %@\n\tshaders = %@\n\tprograms = %@\n\tprogramPipelines = %@", -[DYStaticResourcesInfo debugDescription](&v3, sel_debugDescription), -[DYStaticResourcesInfo description](self, "description"), -[NSArray debugDescription](self->textures, "debugDescription"), -[NSArray debugDescription](self->renderbuffers, "debugDescription"), -[NSArray debugDescription](self->framebuffers, "debugDescription"), -[NSArray debugDescription](self->buffers, "debugDescription"), -[NSArray debugDescription](self->vertexArrays, "debugDescription"), -[NSArray debugDescription](self->queries, "debugDescription"), -[NSArray debugDescription](self->shaders, "debugDescription"), -[NSArray debugDescription](self->programs, "debugDescription"), -[NSArray debugDescription](self->programs, "debugDescription")];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->textures forKey:@"textures"];
  [a3 encodeObject:self->renderbuffers forKey:@"renderbuffers"];
  [a3 encodeObject:self->framebuffers forKey:@"framebuffers"];
  [a3 encodeObject:self->buffers forKey:@"buffers"];
  [a3 encodeObject:self->vertexArrays forKey:@"vertexArrays"];
  [a3 encodeObject:self->queries forKey:@"queries"];
  [a3 encodeObject:self->shaders forKey:@"shaders"];
  [a3 encodeObject:self->programs forKey:@"programs"];
  programPipelines = self->programPipelines;

  [a3 encodeObject:programPipelines forKey:@"programPipelines"];
}

@end