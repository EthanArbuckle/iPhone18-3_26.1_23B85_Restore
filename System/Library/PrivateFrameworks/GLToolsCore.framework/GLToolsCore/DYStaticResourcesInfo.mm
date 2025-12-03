@interface DYStaticResourcesInfo
- (DYStaticResourcesInfo)initWithCoder:(id)coder;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYStaticResourcesInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYStaticResourcesInfo;
  [(DYStaticResourcesInfo *)&v3 dealloc];
}

- (DYStaticResourcesInfo)initWithCoder:(id)coder
{
  v26.receiver = self;
  v26.super_class = DYStaticResourcesInfo;
  v4 = [(DYStaticResourcesInfo *)&v26 init];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->textures = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"textures"}];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v4->renderbuffers = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"renderbuffers"}];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v4->framebuffers = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"framebuffers"}];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v4->buffers = [coder decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, objc_opt_class(), 0), @"buffers"}];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v4->vertexArrays = [coder decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithObjects:", v14, objc_opt_class(), 0), @"vertexArrays"}];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v4->queries = [coder decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithObjects:", v16, objc_opt_class(), 0), @"queries"}];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v4->shaders = [coder decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithObjects:", v18, v19, objc_opt_class(), 0), @"shaders"}];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v4->programs = [coder decodeObjectOfClasses:objc_msgSend(v20 forKey:{"setWithObjects:", v21, v22, objc_opt_class(), 0), @"programs"}];
    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v4->programPipelines = [coder decodeObjectOfClasses:objc_msgSend(v23 forKey:{"setWithObjects:", v24, objc_opt_class(), 0), @"programPipelines"}];
  }

  return v4;
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = DYStaticResourcesInfo;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@\n\ttextures = %@\n\trenderbuffers = %@\n\tframebuffers = %@\n\tbuffers = %@\n\tvertexArrays = %@\n\tqueries = %@\n\tshaders = %@\n\tprograms = %@\n\tprogramPipelines = %@", -[DYStaticResourcesInfo debugDescription](&v3, sel_debugDescription), -[DYStaticResourcesInfo description](self, "description"), -[NSArray debugDescription](self->textures, "debugDescription"), -[NSArray debugDescription](self->renderbuffers, "debugDescription"), -[NSArray debugDescription](self->framebuffers, "debugDescription"), -[NSArray debugDescription](self->buffers, "debugDescription"), -[NSArray debugDescription](self->vertexArrays, "debugDescription"), -[NSArray debugDescription](self->queries, "debugDescription"), -[NSArray debugDescription](self->shaders, "debugDescription"), -[NSArray debugDescription](self->programs, "debugDescription"), -[NSArray debugDescription](self->programs, "debugDescription")];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->textures forKey:@"textures"];
  [coder encodeObject:self->renderbuffers forKey:@"renderbuffers"];
  [coder encodeObject:self->framebuffers forKey:@"framebuffers"];
  [coder encodeObject:self->buffers forKey:@"buffers"];
  [coder encodeObject:self->vertexArrays forKey:@"vertexArrays"];
  [coder encodeObject:self->queries forKey:@"queries"];
  [coder encodeObject:self->shaders forKey:@"shaders"];
  [coder encodeObject:self->programs forKey:@"programs"];
  programPipelines = self->programPipelines;

  [coder encodeObject:programPipelines forKey:@"programPipelines"];
}

@end